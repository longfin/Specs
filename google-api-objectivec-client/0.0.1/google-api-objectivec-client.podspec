Pod::Spec.new do |s|
  s.name         = "google-api-objectivec-client"
  s.version      = "0.0.1"
  s.summary      = "Google APIs Client Library for Objective-C."
  s.homepage     = "http://code.google.com/p/google-api-objectivec-client/"
  s.license      = { :type => 'Apache License, Version 2.0'}
  s.author       = { 'The Google APIs team' => 'http://code.google.com/p/google-api-objectivec-client/' }
  
  s.frameworks   = 'SenTestingKit'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(SDKROOT)/Developer/Library/Frameworks" "$(DEVELOPER_LIBRARY_DIR)/Frameworks"' }
  s.source       = { :svn => "http://google-api-objectivec-client.googlecode.com/svn/trunk"}

  files_pattern = 'Source/**/*.{h,m,mm}'	
  s.source_files = FileList[files_pattern].exclude(/Tests/)
end
