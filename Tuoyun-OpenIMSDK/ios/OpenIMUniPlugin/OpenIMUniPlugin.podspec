#
# Be sure to run `pod lib lint OpenIMUniPlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenIMUniPlugin'
  s.version          = '1.0.0'
  s.summary          = 'A short description of OpenIMUniPlugin.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/openimsdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '8744870' => 'blooming2477@gmail.com' }
  s.source           = { :git => 'https://github.com/openimsdk/open-im-sdk-uniapp.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'OpenIMUniPlugin/Classes/**/*'

  s.static_framework = true
  s.xcconfig         = {
      'USER_HEADER_SEARCH_PATHS' => [
          '"$(SRCROOT)/../../SDK/inc/**"'
      ]
  }
  s.user_target_xcconfig = { 
    'ENABLE_BITCODE' => 'NO',
    'EMBEDDED_CONTENT_CONTAINS_SWIFT' => 'NO'
  }
  s.vendored_frameworks = 'Framework/*.framework'
end
