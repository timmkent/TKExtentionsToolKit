#
# Be sure to run `pod lib lint TKExtentionsToolKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKExtentionsToolKit'
  s.version          = '0.1.0'
  s.summary          = 'TKExtentionsToolKit offers tools to help better work NM NB and SW.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  TKExtentionsToolKit offers tools to help better work NM NB and SW. It comprises a lot of FBService and common funncions.
                       DESC

  s.homepage         = 'https://github.com/timmkent/TKExtentionsToolKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'timmkent' => 'timm.kent@yahoo.com' }
  s.source           = { :git => 'https://github.com/timmkent/TKExtentionsToolKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'
  s.source_files = 'TKExtentionsToolKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TKExtentionsToolKit' => ['TKExtentionsToolKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
