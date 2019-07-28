require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = 'react-native-launch-navigator'
  s.version      = package_json['version']
  s.summary      = package_json['description']
  s.homepage     = 'https://github.com/dpa99c/react-native-launch-navigator'
  s.author       = package_json['author']
  s.license      = package_json['license']
  s.platform     = :ios, '8.0'
  s.source       = {
    :git => 'https://github.com/dpa99c/react-native-launch-navigator.git'
  }
  s.source_files  = 'ios/RNLaunchNavigator/*.{h,m}'

  s.dependency 'React'
end
