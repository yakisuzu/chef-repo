git_dir = [node[:dir][:root], '.git'].join('\\')

com = <<-EOH
  cd #{node[:dir][:root]}
  git init
  git remote add origin https://github.com/yakisuzu/provisioning-chef.git
  git fetch origin
  git reset origin/master
EOH

batch 'init repositry' do
  code com
  action :run
  not_if {File.exists?(git_dir)}
end
