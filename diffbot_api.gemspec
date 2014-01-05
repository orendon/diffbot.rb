# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diffbot_api/version'

Gem::Specification.new do |spec|
  spec.name          = "diffbot_api"
  spec.version       = Diffbot::VERSION
  spec.authors       = ["Oscar Rendon"]
  spec.email         = ["orendon@gmail.com"]
  spec.summary       = %q{Ruby client for Diffbot API.}
  spec.description   = %q{Ruby wraper for the Diffbot API, follows Ruby conventions and idioms.}
  spec.homepage      = "https://github.com/orendon/diffbot.rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
