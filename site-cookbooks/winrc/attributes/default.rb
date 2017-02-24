def get_path(li_path)
  # File.join is slash
  return li_path.join('\\')
end

default[:kernel] = {
  is64: kernel['machine'] =~ /x86_64/
}

default[:dir] = {
  sd: ENV['SYSTEMDRIVE'],
  pf: ENV['ProgramFiles'], # 64 or 32
  pf32: ENV['ProgramW6432'],
  pd: ENV['ProgramData'],
  home: ENV['USERPROFILE'],
  logs: Chef::Config[:file_cache_path],
}
default[:dir][:msys] = node[:kernel][:is64] ? 'msys64' : 'msys32'
default[:dir][:vim] = node[:kernel][:is64] ? 'vim74-kaoriya-win64' : 'vim74-kaoriya-win32'
default[:dir][:root] = File.expand_path('..', node[:dir][:logs])

default[:path] = {
  homebin: (get_path %W(#{node[:dir][:home]} dotfiles bin)),
  docker: (get_path [node[:dir][:pf], 'Docker Toolbox']),
  ruby: (get_path %W(#{node[:dir][:sd]} opscode chefdk embedded bin)),
  chefdk: (get_path %W(#{node[:dir][:sd]} opscode chefdk bin)),
  git_pacman: (get_path %W(#{node[:dir][:sd]} #{node[:dir][:msys]} usr bin)),
  msys2: (get_path [node[:dir][:sd], node[:dir][:msys]]),
  chocolatey: (get_path %W(#{node[:dir][:pd]} chocolatey bin)),
  conemu: (get_path [node[:dir][:pf32], 'ConEmu']),
  vim: (get_path [node[:dir][:pf], node[:dir][:vim]]),
}

#get_path(%W(#{node[:dir][:pf]} Git cmd)),
#get_path(%W(#{node[:dir][:pf]} Git usr bin)),
#get_path(%W(#{node[:dir][:pf]} Git mingw32 bin)),
#get_path(%W(#{node[:dir][:pf]} nodejs)),
#get_path(%W(#{node[:dir][:sd]} tools python2)),
#get_path(%W(#{node[:dir][:sd]} tools python3)),
#get_path(%W(#{node[:dir][:sd]} tools ruby21 bin)),
#get_path(%W(#{node[:dir][:pf]} Subversion bin)),
#get_path(%W(#{node[:dir][:pf]} TortoiseSVN bin)),
