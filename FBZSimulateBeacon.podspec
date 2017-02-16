Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name         = "FBZSimulateBeacon"
  s.version      = "0.1.0"
  s.summary      = "A short description of FBZSimulateBeacon."
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.requires_arc = true
  s.description  = <<-DESC
                   DESC
  s.homepage     = "http://frianbiz.com"
  s.author             = { "Lucas Colomer" => "lco@frianbiz.com" }
  s.framework = "Foundation", "CoreLocation"
  s.source       = { :git => "https://github.com/LucasColomer/FBZSimulateBeacon.git"}
  s.source_files = "FBZSimulateBeacon/**/*.{swift}"
  s.dependency "Firebase", "~> 3.13.0"
end
