
Pod::Spec.new do |s|
  s.name             = 'WCDBNative'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WCDBNative.'

  s.description      = <<-DESC
                       Let WCDB support native SQL.
                       DESC

  s.homepage         = 'https://github.com/pozi119/WCDBNative'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pozi119' => 'pozi119@163.com' }
  s.source           = { :git => 'https://github.com/pozi119/WCDBNative.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'WCDBNative/Classes/**/*'
  s.dependency 'WCDB'
end
