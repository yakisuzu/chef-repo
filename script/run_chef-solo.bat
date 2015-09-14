@echo off
pushd %~dp0

echo run chef-solo...
chef-solo -c config.rb -j ..\site-cookbooks\winrc\roles\default.json

popd
