# -*- encoding: utf-8 -*-
VERSION = "0.0.1" unless defined?(VERSION)

Gem::Specification.new do |spec|
  spec.name          = "indoctrinator"
  spec.version       = VERSION
  spec.authors       = ["Ryan Linton"]
  spec.email         = ["ryanlntn@gmail.com"]

  spec.summary       = "Provides a Path style tutorial for RubyMotion apps."
  spec.description   = "Provides a Path style tutorial for RubyMotion apps."

  spec.homepage      = "https://github.com/ryanlntn/indoctrinator"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
