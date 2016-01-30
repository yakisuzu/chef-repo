install_path = [node[:dir][:pf], 'Stickies'].join('\\')
windows_package 'stickies' do
  source 'http://www.zhornsoftware.co.uk/support/kb00013-7.1e.exe'
  #installer_type :custom
  #installer_type :inno
  #installer_type :installshield
  #installer_type :msi
  #installer_type :nsis
  installer_type :wise
  action :install
  not_if {File.exists?(install_path)}
end

