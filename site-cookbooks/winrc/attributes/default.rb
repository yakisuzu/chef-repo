def get_path(li_path)
  return li_path.join('\\')
end

sd = ENV['SYSTEMDRIVE']
pf = ENV['ProgramFiles']
pd = ENV['ProgramData']

default[:winrc][:paths][:machine] = [
  #get_path(%W(#{pf} ConEmu)),
  #get_path(%W(#{pf} vim74-kaoriya-win32)),
  #get_path(%W(#{pd} chocolatey bin)),
  #get_path(%W(#{pf} Git cmd)),
  #get_path(%W(#{pf} Git usr bin)),
  #get_path(%W(#{pf} Git mingw32 bin)),
  #get_path(%W(#{pf} nodejs)),
  #get_path(%W(#{sd} tools python2)),
  #get_path(%W(#{sd} tools python3)),
  #get_path(%W(#{sd} tools ruby21 bin)),
  #get_path(%W(#{pf} Subversion bin)),
  #get_path(%W(#{pf} TortoiseSVN bin)),
  get_path(%W(#{sd} opscode chefdk bin)),
]
