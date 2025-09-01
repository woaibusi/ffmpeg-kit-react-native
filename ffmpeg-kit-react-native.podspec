require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-react-native"
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.authors      = package['author']
  s.platforms    = { :ios => "12.1" }

  s.source       = { :git => "https://github.com/woaibusi/ffmpeg-kit-react-native.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency "ffmpeg-kit-ios-full", "6.0"
end
