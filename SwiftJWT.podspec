Pod::Spec.new do |s|

  s.name         = "SwiftJWT"
  s.version      = "1.0.0"
  s.summary      = "An implementation of JSON Web Token using Swift."
  s.homepage     = "https://github.com/IBM-Swift/Swift-JWT"
  s.license      = { :type => "APACHE 2.0", :file => "LICENSE" }
  s.authors      = { "Shihab Mehboob" => "shihab.mehboob1@ibm.com" }
  s.osx.deployment_target = "10.11"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/IBM-Swift/Swift-JWT", :branch => "Pod", :submodules => true }
  s.subspec 'Cryptor' do |cryptor|
    cryptor.source_files = 'Sources/SwiftJWT/Cryptor/*.swift'
  end
  s.subspec 'HeliumLogger' do |heliumlogger|
    heliumlogger.source_files = 'Sources/SwiftJWT/HeliumLogger/*.swift'
  end
  s.source_files  = "Sources/SwiftJWT/*.swift"
end
