#
# Be sure to run `pod lib lint KWNumberFormatter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KWNumberFormatter'
  s.version          = '0.1.0'
  s.summary          = 'KWNumberFormatter is a library that facilitates easy handling of the decimal part of Double, Float, and Decimal types.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'KWNumberFormatter is a library that facilitates easy handling of the decimal part of Double, Float, and Decimal types. It allows you to limit the number of decimal places or fill the decimal part with zeros. For the integer part, you can insert or remove commas as needed.'
  s.swift_version    = '5.0'
  s.homepage         = 'https://github.com/AnnaBaeTofuMom/KWNumberFormatter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anna.bae' => 'annabae.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/AnnaBaeTofuMom/KWNumberFormatter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'KWNumberFormatter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KWNumberFormatter' => ['KWNumberFormatter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
