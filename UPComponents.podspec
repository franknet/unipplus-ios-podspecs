
Pod::Spec.new do |spec|

  spec.name                 = "UPComponents"
  spec.version              = "0.1.0"
  spec.summary              = "UPComponents"
  spec.description          = <<-DESC
  Pod with custom components
                   DESC

  spec.homepage             = "https://github.com/franknet/unipplus-ios-podspecs.git"
  spec.license              = "MIT"
  spec.author               = { "Jossé Franklin" => "franklinsilvaalves@gmail.com" }
  spec.platform             = :ios, "12.0"
  spec.swift_version        = "5.5"
  spec.source               = { :git => "https://github.com/franknet/unipplus-ios-podspecs.git", :tag => "components-v#{spec.version}" }
  spec.source_files         = "UPComponents/Classes/**/*"
  spec.resources            = "UPComponents/Assets/*"
  spec.resource_bundle      = { "UPComponents" => ["UPComponents/Assets/*"] }
  spec.info_plist 			= { "CFBundleIdentifier" => "br.com.mobileclass.UPComponents" } 

end