
Pod::Spec.new do |spec|

  spec.name                 = "UPTheme"
  spec.version              = "0.1.0"
  spec.summary              = "UPTheme"
  spec.description          = <<-DESC
  Theme pod containing font, images, colors and styles
                   DESC

  spec.homepage             = "https://github.com/franknet/unipplus-ios-podspecs.git"
  spec.license              = { :type => "MIT" }
  spec.author               = { "Jossé Franklin" => "franklinsilvaalves@gmail.com" }
  spec.platform             = :ios, "12.0"
  spec.swift_version        = "5.5"
  spec.source               = { :git => "https://github.com/franknet/unipplus-ios-podspecs.git", :tag => "uptheme-v#{spec.version}" }
  spec.source_files         = "UPTheme/Classes/**/*"
  spec.resources            = "UPTheme/Assets/*"
  spec.resource_bundle      = { "UPTheme" => ["UPTheme/Assets/*"] }

end
