#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ann_dynamic_icon.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ann_dynamic_icon'
  s.version          = '0.0.1'
  s.summary          = 'dynamically changing app launcher icon'
  s.description      = <<-DESC
dynamically changing app launcher icon
                       DESC
  s.homepage         = 'http://anline.cn'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Anline' => 'admin@anline.cn' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
