# -*- encoding: utf-8 -*-
require File.expand_path('../lib/time_calculations/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Johnson"]
  gem.email         = ["chris@kindkid.com"]
  gem.description   = "Extra methods for Date, Time, and DateTime"
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/kindkid/time_calculations"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "time_calculations"
  gem.require_paths = ["lib"]
  gem.version       = TimeCalculations::VERSION
  gem.add_dependency "active_support", "~> 3.0.0"
  gem.add_dependency "i18n"

  gem.add_development_dependency "rspec", "~> 2.10.0"
  gem.add_development_dependency "simplecov", "~> 0.6.4"
  gem.add_development_dependency("rb-fsevent", "~> 0.9.1") if RUBY_PLATFORM =~ /darwin/i
  gem.add_development_dependency "guard", "~> 1.1.1"
  gem.add_development_dependency "guard-bundler", "~> 0.1.3"
  gem.add_development_dependency "guard-rspec", "~> 1.0.0"
  gem.add_development_dependency "timecop", "~> 0.3.5"
end
