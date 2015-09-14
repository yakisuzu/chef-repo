@echo off
pushd %~dp0

echo update berks...
set BERKSHELF_PATH=%CD%\..
berks install -c=..\site-cookbooks\winrc\Berksfile

popd
