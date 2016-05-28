# path manegement
include_recipe 'winrc::path'

# install application
include_recipe 'winrc::msys2'
include_recipe 'winrc::gvim'
include_recipe 'winrc::choco_package'
include_recipe 'winrc::dotfiles'
include_recipe 'winrc::stickies'

# pacman
include_recipe 'winrc::pacman'

# init repos
include_recipe 'winrc::repository_init'
