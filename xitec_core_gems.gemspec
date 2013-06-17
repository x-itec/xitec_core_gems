# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xitec_core_gems/version'

Gem::Specification.new do |spec|
  spec.name          = "xitec_core_gems"
  spec.version       = XitecCoreGems::VERSION
  spec.authors       = ["Boris Koester"]
  spec.email         = ["x-itec@freenet.de"]
  spec.description   = %q{internal component}
  spec.summary       = %q{core component}
  spec.homepage      = "http://www.x-itec.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "uuid"
  spec.add_dependency "capybara"
  spec.add_dependency "yard"
  spec.add_dependency "redcarpet"
  spec.add_dependency "rails_best_practices"
  spec.add_dependency "simplecov"
  spec.add_dependency "simplecov-rcov"

end
