# coding: UTF-8

Gem::Specification.new do |s|
  s.add_runtime_dependency 'rails', '>= 4.0'


  s.name              = "file_browser_manager"
  s.version           = "0.0.3"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["iXmedia"]
  s.email             = ["suivi@ixmedia.com"]
  s.homepage          = "http://github.com/ixmedia/file_browser_manager"
  s.license           = "MIT"
  s.summary           = "Library to browse in local folder"

  s.files             = Dir["{lib}/**/*", "README.md"]
  s.require_path      = 'lib'
  s.license           = 'MIT'

end