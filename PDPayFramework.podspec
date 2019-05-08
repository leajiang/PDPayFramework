Pod::Spec.new do |spec|
spec.name         = 'PDPayFramework'
spec.version      = '2.1.6'
spec.license      = { :type => 'MIT' }
spec.homepage     = 'https://github.com/leajiang/PDPayFramework'
spec.authors      = { "jiangle" => "649498510@qq.com" }
spec.summary      = 'jiangle.'
spec.source       = { :git => 'https://github.com/leajiang/PDPayFramework.git', :tag =>'2.1.6'  }
spec.platform     = :ios, '8.0'
spec.vendored_frameworks = 'PDPayFramework.framework'
spec.frameworks   = 'UIKit','AVFoundation','Foundation'
spec.dependency 'AFNetworking'
spec.dependency 'MJRefresh'
spec.dependency 'SDWebImage'
spec.dependency 'MBProgressHUD'
spec.dependency 'Masonry'
spec.dependency 'IQKeyboardManager'
spec.dependency 'MJExtension'
spec.dependency 'ZLPhotoBrowser'
spec.dependency 'WechatOpenSDK'
end
