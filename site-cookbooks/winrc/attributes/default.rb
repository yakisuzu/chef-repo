def get_path(li_path)
  # File.join is slash
  return li_path.join('\\')
end

default[:kernel][:is64] = kernel['machine'] =~ /x86_64/

default[:dir][:sd] = ENV['SYSTEMDRIVE']
default[:dir][:pf] = ENV['ProgramFiles']
default[:dir][:pd] = ENV['ProgramData']
default[:dir][:home] = ENV['HOMEDRIVE'] + ENV['HOMEPATH']

default[:dir][:logs] = Chef::Config[:file_cache_path]
default[:dir][:root] = File.expand_path('..', node[:dir][:logs]) 

default[:path] = {
  :msysgit => get_path(%W(#{node[:dir][:sd]} tools cmder vendor msysgit bin)),
  :ruby => get_path(%W(#{node[:dir][:sd]} opscode chefdk embedded bin)),
  :chefdk => get_path(%W(#{node[:dir][:sd]} opscode chefdk bin)),
  :pacman => get_path([node[:dir][:sd], node[:kernel][:is64] ? 'msys64' : 'msys32', 'usr', 'bin']),
  :msys2 => get_path([node[:dir][:sd], node[:kernel][:is64] ? 'msys64' : 'msys32']),
  :chocolatey => get_path(%W(#{node[:dir][:pd]} chocolatey bin)),
  :cmder => get_path(%W(#{node[:dir][:sd]} tools cmder)),
  :vim => get_path([node[:dir][:pf], node[:kernel][:is64] ? 'vim74-kaoriya-win64' : 'vim74-kaoriya-win32']),
}

  #get_path(%W(#{node[:dir][:pf]} ConEmu)),
  #get_path(%W(#{node[:dir][:pf]} Git cmd)),
  #get_path(%W(#{node[:dir][:pf]} Git usr bin)),
  #get_path(%W(#{node[:dir][:pf]} Git mingw32 bin)),
  #get_path(%W(#{node[:dir][:pf]} nodejs)),
  #get_path(%W(#{node[:dir][:sd]} tools python2)),
  #get_path(%W(#{node[:dir][:sd]} tools python3)),
  #get_path(%W(#{node[:dir][:sd]} tools ruby21 bin)),
  #get_path(%W(#{node[:dir][:pf]} Subversion bin)),
  #get_path(%W(#{node[:dir][:pf]} TortoiseSVN bin)),
