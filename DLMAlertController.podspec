#
# Be sure to run `pod lib lint DLMAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DLMAlertController'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DLMAlertController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yangjian/DLMAlertController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangjian' => 'yangjian@baijiahulian.com' }
  s.source           = { :git => 'https://github.com/yangjian/DLMAlertController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DLMAlertController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DLMAlertController' => ['DLMAlertController/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/DLMAlertController.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Masonry'
  s.dependency 'DLMFoundation'#, :git => 'git@github.com:DuoLaiMao/DLMFoundation.git'
  s.dependency 'DLMKit' #, :git => 'git@github.com:DuoLaiMao/DLMKit.git'
end
