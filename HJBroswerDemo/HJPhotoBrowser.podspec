Pod::Spec.new do |s|

# 名称 使用的时候pod search [name]
s.name             = 'HJPhotoBrowser'
# 代码库的版本
s.version          = '1.0.2'
# 简介 
s.summary          = "一款iOS高性能图片浏览器，依赖SDWebImage，支持浏览本地图片及网络图片"
# 主页
s.homepage         = 'https://github.com/coder-zwz/HJPhotoBrowser'
# 许可证书类型，要和仓库的LICENSE 的类型一致
s.license          = { :type => 'MIT', :file => 'LICENSE' }
# 作者名称 和 邮箱 
s.author = {"zuweizhong" => "2416086440@qq.com" }
# 代码的Clone 地址 和 tag 版本
s.source           = { :git => 'https://github.com/coder-zwz/HJPhotoBrowser.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
# 如果使用pod 需要导入哪些资源
s.source_files = 'HJBroswerDemo/HJBroswerDemo/HJPhotoBrowser/**/*'
s.frameworks = 'Foundation', 'StoreKit'
# 框架是否使用的ARC 
s.requires_arc = true 
# 框架依赖
s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

end
