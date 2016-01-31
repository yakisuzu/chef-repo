url = 'http://files.kaoriya.net/goto/' + (node[:kernel][:is64] ? 'vim74w64' : 'vim74w32')
windows_zipfile node[:dir][:pf] do
  source url
  action :unzip
  not_if {File.exists?(node[:path][:vim])}
end

bundle_path = [node[:dir][:home], '.vim', 'bundle'].join('\\')
neobundle_path = [bundle_path, 'neobundle.vim'].join('\\')

directory bundle_path do
  recursive true
  action :create
end

git neobundle_path do
  repository 'https://github.com/Shougo/neobundle.vim.git'
  enable_checkout false
  action :checkout
end
