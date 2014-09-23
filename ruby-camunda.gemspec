# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/camunda/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-camunda"
  spec.version       = Ruby::Camunda::VERSION
  spec.authors       = ["Anton Evangelatov"]
  spec.email         = ["anton.evangelatov@gmail.com"]
  spec.summary       = %q{Ruby gem for interactive with Camunda BPM REST API.}
  spec.description   = %q{Ruby gem for interactive with Camunda BPM REST API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "faraday"
  spec.add_dependency "rest_client"
end
