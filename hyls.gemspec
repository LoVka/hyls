# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyls/version'

Gem::Specification.new do |spec|
  spec.name          = "hyls"
  spec.version       = Hyls::VERSION
  spec.authors       = ["LoVka"]
  spec.email         = ["lovkavo@gmail.com"]

  spec.summary       = %q{Command line application to manage bookmarks URIs}
  spec.description   = %q{Command line application 'hyls' to manage locally stored bookmarks URIs.}
  spec.homepage      = "https://github.com/LoVka/hyls"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
