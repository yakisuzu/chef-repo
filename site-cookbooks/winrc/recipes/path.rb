node[:path].each do |k,v|
  # remove path for suffix of yen
  windows_path v + '\\' do
    action :remove
  end

  # sort
  windows_path v do
    action :remove
  end

  # append path to machine env
  windows_path v do
    action :add
  end
end
