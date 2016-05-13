# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry-objects/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-objects"
  spec.version       = PryObjects::VERSION
  spec.authors       = ["Adrian Kuhn"]
  spec.email         = ["adrian.kuhn@airbnb.com"]

  spec.summary       = %q{Evaluate expression and print created objects.}
  spec.homepage      = "https://github.com/akuhn/pry-tree"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
