# https://ja.wikipedia.org/wiki/Pacman
def install_pacman(st_name, st_package)
  unless `where #{st_package}`.match(/#{st_package}/) then
    return batch st_name do
      code "pacman -S #{st_package} --noconfirm"
      action :run
    end
  else
    return log "#{st_package} installed" do
      action :nothing
    end
  end
end

batch 'update' do
  code "pacman -Syu --noconfirm"
  action :run
end

#install_pacman('install python3', 'python')
#install_pacman('install python2', 'python2')
install_pacman('install tig', 'tig')
