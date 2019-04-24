#
#  Be sure to run `pod spec lint Fragrans.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "Fragrans"
  s.version      = "0.2.2"
  s.summary      = "The method of class attribute auxiliary tool"

  s.description  = <<-DESC
               Convenient, extending the class attribute method development
               DESC

  s.homepage     = "https://github.com/chadhea/Fragrans"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license  = 'MIT'
  s.author             = { "chadhea" => "chadhea@163.com" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform     = :ios,'8.0'
  s.source       = { :git => "https://github.com/chadhea/Fragrans.git", :tag => s.version }

  s.source_files  = "Fragrans/Fragrans/Fragrans/Fragrans.h"
  s.public_header_files = "Fragrans/Fragrans/Fragrans/Fragrans.h"

  s.subspec 'Custom' do |c|
    #c.public_header_files = 'Fragrans/Fragrans/Fragrans/Custom'
    c.source_files = 'Fragrans/Fragrans/Fragrans/Custom/**/*'
  end

  s.subspec 'Extend' do |e|
    #e.public_header_files = 'Fragrans/Fragrans/Fragrans/Extend'
    e.source_files = 'Fragrans/Fragrans/Fragrans/Extend/**/*'
  end

  s.subspec 'Function' do |f|
    #f.public_header_files = 'Fragrans/Fragrans/Fragrans/Function'
    f.source_files = 'Fragrans/Fragrans/Fragrans/Function/**/*'
  end

  s.subspec 'UIKit' do |u|
    #u.public_header_files = 'Fragrans/Fragrans/Fragrans/UIKit'
    u.source_files = 'Fragrans/Fragrans/Fragrans/UIKit/**/*'
  end
  


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
