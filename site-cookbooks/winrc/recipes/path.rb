li_env_path = ENV[:PATH].split(';')

node[:winrc][:paths][:machine].each do |path|
  # remove path for suffix of yen
  path_yen = path + '\\'
  if li_env_path.include?(path_yen)
    windows_path path_yen do
      action :remove
    end
  end

  # append path to machine env
  windows_path path do
    action :add
  end
end
