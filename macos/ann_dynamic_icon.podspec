#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ann_dynamic_icon.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ann_dynamic_icon'
  s.version          = '0.0.3'
  s.summary          = 'dynamically changing app launcher icon'
  s.description      = <<-DESC
dynamically changing app launcher icon
                       DESC
  s.homepage         = 'http://anline.cn'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Anline' => 'admin@anline.cn' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
