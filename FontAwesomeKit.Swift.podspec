
Pod::Spec.new do |s|
  s.name         = "FontAwesomeKit.Swift"
  s.version      = "0.4.2"
  s.summary      = "A better choice for iOS developer to use FontAwesome Icon with UI."
  s.description      = <<-DESC
                        A better choice for iOS developer to use FontAwesome Icon with UI. Now it's up to you.
                       DESC

  s.homepage     = "https://github.com/qiuncheng/FontAwesomeKit.Swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Qiuncheng" => "qiuncheng@gmail.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/qiuncheng/FontAwesomeKit.Swift.git", :tag => s.version }

  s.source_files  = 'FontAwesomeKit/*.{swift, h}'
  s.resource_bundle = { 'FontAwesomeKit.Swift' => 'FontAwesomeKit/*.otf' }
  s.requires_arc = true
  s.frameworks = 'UIKit'

end
