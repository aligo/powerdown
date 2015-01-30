lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'powerdown/version'

Gem::Specification.new do |spec|
  spec.name = 'powerdown'
  spec.version = Powerdown::VERSION
  spec.authors = ['aligo']
  spec.email = ['aligo_x@163.com']
  spec.description = %q{PowerPoint from Markdown-like.}
  spec.summary = %q{PowerPoint from Markdown-like.}
  spec.homepage = 'https://github.com/aligo/powerdown'
  spec.license = 'MIT'
  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'powerpoint', '~> 1.4'
end