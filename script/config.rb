repo_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

cookbook_path [File.join(repo_path, 'site-cookbooks'), File.join(repo_path), 'cookbooks']
role_path File.expand_path(File.join(File.dirname(__FILE__), 'roles'))
file_cache_path File.expand_path(File.join(File.dirname(__FILE__), 'logs'))
