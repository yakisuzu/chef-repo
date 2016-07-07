# include_recipe 'nodejs'
def install_npm(st_name, st_package)
  unless `where #{st_package}`.match(/#{st_package}/) then
    return batch st_name do
      code "npm install #{st_package} -g"
      action :run
    end
  else
    return log "#{st_package} installed" do
      action :nothing
    end
  end
end

# nodejs_npm 'eslint'
install_npm('install eslint', 'eslint')
