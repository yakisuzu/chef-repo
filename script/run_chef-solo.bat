@echo off
pushd %~dp0

echo run chef-solo...
set chef_solo_config=%CD%\config.rb
set chef_solo_json=%CD%\..\site-cookbooks\winrc\roles\default.json
popd

chef-solo -c %chef_solo_config% -j %chef_solo_json%
rem exit in chef-solo
