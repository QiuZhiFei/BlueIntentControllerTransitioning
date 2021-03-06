#
# Be sure to run `pod lib lint BlueIntentControllerTransitioning.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BlueIntentControllerTransitioning'
  s.version          = '0.1.0'
  s.summary          = 'BlueIntentControllerTransitioning is a framework for drag to dismiss a modal controller.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#   s.description      = <<-DESC
# TODO: Add long description of the pod here.
#                        DESC

  s.homepage         = 'https://github.com/qiuzhifei/BlueIntentControllerTransitioning'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiuzhifei' => 'qiuzhifei521@gmail.com' }
  s.source           = { :git => 'https://github.com/qiuzhifei/BlueIntentControllerTransitioning.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.swift_versions = ['5.1', '5.2', '5.3']

  s.source_files = 'BlueIntentControllerTransitioning/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BlueIntentControllerTransitioning' => ['BlueIntentControllerTransitioning/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'BlueIntent/Base', '~> 0.11.0'
end
