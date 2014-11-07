# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdc/version'

Gem::Specification.new do |spec|
  spec.name          = "mdc"
  spec.version       = MDC::VERSION
  spec.authors       = ["Americo Duarte"]
  spec.email         = ["americodls@gmail.com"]
  spec.summary       = %q{A simple executable that generate html and pdf from markdown files.}
  spec.description   = %q{A simple executable that generate html and pdf from markdown files.}
  spec.homepage      = "https://github.com/americodls/mdc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "redcarpet"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
