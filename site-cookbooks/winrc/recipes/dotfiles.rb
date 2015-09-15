dotfiles = ENV['HOMEDRIVE'] + ENV['HOMEPATH'] + '\\dotfiles'

git dotfiles do
  repository 'https://github.com/yakisuzu/dotfiles.git'
  enable_checkout false
  action :checkout
  notifies :run, 'batch[install_dotfiles]', :immediately
end

batch 'install_dotfiles' do
  code <<-EOH
    #{dotfiles}\\install.bat
    EOH
  action :nothing
end
