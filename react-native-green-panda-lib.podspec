# react-native-green-panda-lib.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-green-panda-lib"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-green-panda-lib
                   DESC
  s.homepage     = "https://github.com/clausasd/react-native-green-panda-lib"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Claudiu Florea" => "claudiu@beecoded.ro" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/clausasd/react-native-green-panda-lib.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

