def get_dir(li_dir)
  root_path = File.join(File.dirname(__FILE__), '..')
  return File.expand_path(File.join([root_path] + li_dir))
end

cookbook_path [get_dir(%w(site-cookbooks)), get_dir(%w(cookbooks))]
file_cache_path get_dir(%w(logs))
