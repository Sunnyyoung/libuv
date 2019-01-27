Pod::Spec.new do |s|
  s.name         = 'libuv'
  s.version      = '1.25.0'
  s.summary      = 'Cross-platform asynchronous I/O.'
  s.description  = 'libuv is a multi-platform support library with a focus on asynchronous I/O. It was primarily developed for use by Node.js, but it\'s also used by Luvit, Julia, pyuv, and others.'
  s.homepage     = "http://libuv.org/"
  s.license      = { :type => 'libuv', :file => 'LICENSE' }
  s.author       = 'libuv'
  s.platform     = :macos, '10.7'

  # TODO: Supporting iOS
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source              = { :git => 'https://gitlab.com/Sunnyyoung/libuv.git', :tag => "#{s.version}" }
  s.source_files        = 'libuv/headers/*.h'
  s.public_header_files = 'libuv/headers/*.h'
  s.vendored_libraries  = 'libuv/libuv.a'
  s.requires_arc        = false
end
