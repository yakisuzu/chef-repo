dotfiles = [node[:dir][:home], 'dotfiles'].join('\\')

git dotfiles do
  repository 'https://github.com/yakisuzu/dotfiles.git'
  enable_checkout false
  action :checkout
  notifies :run, 'batch[install_dotfiles]', :immediately
end

batch 'install_dotfiles' do
  code "#{dotfiles}\\install.bat"
  action :nothing
end
