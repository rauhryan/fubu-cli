# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fubu/version'

Gem::Specification.new do |gem|
  gem.name          = "fubu"
  gem.version       = Fubu::VERSION
  gem.authors       = ["Ryan Rauh", "Matt Smith"]
  gem.email         = ["rauh.ryan@gmail.com", "mtscout6@gmail.com"]
  gem.description   = %q{Quickly install fubu command line tools}
  gem.summary       = %q{installs various command line tools for the fubu family of projects}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = ["fubu"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "ripple-cli", "~> 0.0.1"
end
