# path manegement
include_recipe 'winrc::path'

# install application
include_recipe 'winrc::msys2'
include_recipe 'winrc::gvim'
include_recipe 'winrc::choco_package'
include_recipe 'winrc::dotfiles'
include_recipe 'winrc::stickies'
include_recipe 'winrc::docker'

# npm
include_recipe 'winrc::nodejs'

# pacman
include_recipe 'winrc::pacman'

# init repos
include_recipe 'winrc::repository_init'
