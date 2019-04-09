Pod::Spec.new do |s|
  s.name         = 'libuv'
  s.version      = '1.27.0'
  s.summary      = 'Cross-platform asynchronous I/O.'
  s.description  = 'libuv is a multi-platform support library with a focus on asynchronous I/O. It was primarily developed for use by Node.js, but it\'s also used by Luvit, Julia, pyuv, and others.'
  s.homepage     = "http://libuv.org/"
  s.author       = 'libuv'
  s.license      = { :type => 'libuv', :file => 'LICENSE' }

  s.ios.deployment_target = "5.0"
  s.osx.deployment_target = "10.6"

  s.source                = { :git => 'https://gitlab.com/Sunnyyoung/libuv.git', :tag => "#{s.version}" }
  s.source_files          = 'libuv/headers/*.h'
  s.public_header_files   = 'libuv/headers/*.h'
  s.ios.vendored_library  = 'libuv/iOS/libuv.a'
  s.osx.vendored_library  = 'libuv/macOS/libuv.a'
  s.requires_arc          = false
end
