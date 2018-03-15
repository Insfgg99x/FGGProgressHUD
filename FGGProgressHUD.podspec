Pod::Spec.new do |s|
s.name         = "FGGProgressHUD"
s.version      = "1.0"
s.summary      = "Simple Style HUD"
s.homepage     = "https://github.com/Insfgg99x/FGGProgressHUD"
s.license      = "MIT"
s.authors      = { "CGPointZero" => "newbox0512@yahoo.com" }
s.source       = { :git => "https://github.com/Insfgg99x/FGGProgressHUD.git", :tag => "1.0"}
#s.frameworks  = 'Foundation','UIKit'
s.ios.deployment_target = '7.0'
s.source_files = 'FGGProgressHUD/*.{h,m}'
s.requires_arc = true
#s.dependency 'pop'
end

