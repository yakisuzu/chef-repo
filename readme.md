# require
## install [chefdk](https://downloads.chef.io/chef-dk/)
require chef-solo and berks commands  
DL & install gui  

## install [chocolatey](https://chocolatey.org/)
command prompt as admin  
`@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))"`  

## setup cookbook
command prompt as admin  
`script\update_berks.bat`  

# provisioning
## win
command prompt as admin  
`script\run_chef-solo.bat`  
