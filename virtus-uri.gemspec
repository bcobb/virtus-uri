# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus/uri/version'

Gem::Specification.new do |spec|
  spec.name          = "virtus-uri"
  spec.version       = Virtus::URI::VERSION
  spec.authors       = ["Brian Cobb"]
  spec.email         = ["bcobb@uwalumni.com"]
  spec.summary       = "Add a URI attribute type to Virtus."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb'] + ['README.markdown']
  spec.files         = Dir['spec/**/*.rb']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "virtus", "< 1.0.0"
end
