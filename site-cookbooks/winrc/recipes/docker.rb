filepath = File.expand_path('DockerToolbox.exe', node[:dir][:logs])
remote_file filepath do
  # previous win10
  source 'https://download.docker.com/win/stable/DockerToolbox.exe'
  action :create_if_missing
end 
