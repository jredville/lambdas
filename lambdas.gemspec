# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lambdas/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jim Deville"]
  gem.email         = ["james.deville@gmail.com"]
  gem.description   = %q{A collection of lambdas for your enjoyment}
  gem.summary       = %q{A collection of lambdas to use for programming tasks}
  gem.homepage      = "http://github.com/jredville/lambdas"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lambdas"
  gem.require_paths = ["lib"]
  gem.version       = Lambdas::VERSION
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('rake','~> 0.9.2')
  gem.add_development_dependency('rspec')
end
