Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name         = "FBZSimulateBeacon"
  s.version      = "0.1.9"
  s.summary      = "FBZSimulateBeacon Description"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.requires_arc = true
  s.description  = <<-DESC
Long description for FBZSimulateBeacon
                   DESC
  s.homepage     = "http://frianbiz.com"
  s.author       = { "Lucas Colomer" => "lco@frianbiz.com" }
  s.framework    = "Foundation", "CoreLocation"
  s.source       = { :git => "https://github.com/LucasColomer/FBZSimulateBeacon.git", :tag => "#{s.version}"}
  s.source_files = "FBZSimulateBeacon/**/*.{swift}"
  s.dependency 'Firebase', '~> 3.13.0'
  s.dependency 'Firebase/Database'
end
