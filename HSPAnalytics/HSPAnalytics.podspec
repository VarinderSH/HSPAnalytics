#
# Be sure to run `pod lib lint HSPAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HSPAnalytics'
  s.version          = '1.0.0'
  s.summary          = 'A lightweight analytics tracking library.'
  s.description      = 'HSPAnalytics is a simple analytics library that allows event tracking in iOS applications with minimal setup.'

  s.homepage         = 'https://github.com/VarinderSH/HSPAnalytics'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'VarinderSH' => 'varindersh@hsphoenix.com' }
  s.source           = { :git => 'https://github.com/VarinderSH/HSPAnalytics.git', :tag => s.version }

  s.ios.deployment_target = '12.0'
  s.source_files = 'HSPAnalytics/Classes/**/*.swift'
  s.swift_versions   = ['5.0']


end
