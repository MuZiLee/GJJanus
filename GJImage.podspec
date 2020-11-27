Pod::Spec.new do |s|
  s.name     = 'GJJanus'
  s.version  = '0.1.0'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GJJanus.'
  s.homepage = 'https://github.com/MuZiLee/GJJanus'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'MuZiLee' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/GJJanus.git', :tag => "#{s.version}" }
  
  s.ios.deployment_target = '8.0'


  s.subspec 'GJJanus' do |ss|
    ss.source_files        = 'GJJanus/**/*.{h,m}'
    ss.public_header_files = 'GJJanus/**/*.h'
  end
  s.subspec 'GJCategory' do |ss|
    ss.source_files        = 'GJCategory/**/*.{h,m}'
    ss.public_header_files = 'GJCategory/**/*.h'
  end
  s.subspec 'WebRTC' do |ss|
    ss.source_files        = 'frameworks/*'
  end
  
  

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO' }
  s.requires_arc = true
  s.static_framework = true
  
  s.frameworks   = ['UIKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'AVFoundation']

  

end
