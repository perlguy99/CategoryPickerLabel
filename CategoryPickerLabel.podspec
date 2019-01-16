Pod::Spec.new do |s|
  s.name         = "CategoryPickerLabel"
  s.version      = "0.0.7"

  s.summary      = "A label that opens a picker for selection."

  s.homepage     = "https://github.com/perlguy99/CategoryPickerLabel"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Brent Michalski" => "Brent.Michalski@gmail.com" }
  s.social_media_url   = "http://twitter.com/perlguy2"

  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/perlguy99/CategoryPickerLabel.git", :tag => "#{s.version}" }

  s.source_files = "CategoryPickerLabel/**/*.{swift}"

  s.framework  = "UIKit"
  s.dependency "FontAwesome.swift", "~> 1.4.8"

  s.swift_version = "4.2"
  s.requires_arc = true

end
