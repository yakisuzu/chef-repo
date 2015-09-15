node[:winrc][:paths][:machine].each do |path|
  # remove path for suffix of yen
  windows_path path + '\\' do
    action :remove
  end

  # append path to machine env
  windows_path path do
    action :add
  end
end
