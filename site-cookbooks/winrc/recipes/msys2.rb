batch 'set home' do
  code "setx HOME %HOMEPATH%"
  action :run
end

filepath = File.expand_path('msys2.exe', node[:dir][:logs])
remote_file filepath do
  source 'http://sourceforge.net/projects/msys2/files/latest/download'
  action :create_if_missing
end 

batch 'msys2' do
  code "#{filepath}"
  action :run
  not_if {File.exists?(node[:path][:msys2])}
end
