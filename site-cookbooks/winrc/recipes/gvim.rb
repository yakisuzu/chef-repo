pd = ENV['ProgramData']
windows_zipfile pd do
  source 'http://files.kaoriya.net/goto/vim74w32'
  action :unzip
  not_if {::File.exists?(pd + '\\vim74-kaoriya-win32')}
end
