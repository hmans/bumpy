# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bumpy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{Bumpy bumps your gem's version number.}
  gem.summary       = %q{Bumpy bumps your gem's version number.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bumpy"
  gem.require_paths = ["lib"]
  gem.version       = Bumpy::VERSION

  gem.add_dependency 'optimist'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'watchr'
end
