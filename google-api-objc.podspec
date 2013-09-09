Pod::Spec.new do |s|
  s.name         = "google-api-objc"
  s.version      = "0.0.1"
  s.summary      = "Google API SDK."
  s.homepage     = "http://code.google.com/p/google-api-objectivec-client/"
  s.license      = 'Apache License 2.0'
  s.author       = 'Google'
  
  s.source       = { :git => "git@github.com:Taptera/google-api-objectivec-client.git"}
  s.platform     = :ios, '5.0'
  
  s.resources = 'Source/OAuth2/Touch/GTMOAuth2ViewTouch.xib'

  s.source_files = FileList['Source/HTTPFetcher/*.{h,m}'].exclude('Tests'),
                   FileList['Source/Networking/*.{h,m}'],
                   FileList['Source/Objects/*.{h,m}'],
                   FileList['Source/Utilities/*.{h,m}'],
                   FileList['Source/Services/Calendar/Generated/*.{h,m}'].exclude(/GTLCalendar_Sources\.m/),
                   FileList['Source/OAuth2/*.{h,m}'],
                   FileList['Source/OAuth2/Touch/*.{h,m}'],
                   'Source/GTLDefines.h'                   

  s.frameworks   = 'Security', 'SystemConfiguration'
  s.requires_arc = false
end