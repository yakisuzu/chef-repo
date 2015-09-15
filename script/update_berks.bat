@echo off
pushd %~dp0

echo update berks...
set BERKSHELF_PATH=%CD%\..
popd

berks install -b=%BERKSHELF_PATH%\site-cookbooks\winrc\Berksfile
rem exit in berks
