# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tasksync/version'

Gem::Specification.new do |spec|
  spec.name          = "TaskSync"
  spec.version       = TaskSync::VERSION
  spec.authors       = ["Marcel Otto", "Stefan Otto"]
  spec.email         = ["marcelotto.de@gmail.com", "sotto.de@gmail.com"]
  spec.summary       = %q{Synchronizes Tasks between different Task and Issue management systems.}
  spec.description   = %q{Synchronizes Tasks between different Task and Issue management systems.}
  spec.homepage      = "http://github.com/marcelotto/tasksync"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "taskmapper", "~> 1.0.1"
  spec.add_dependency "taskmapper-pivotal", "~> 0.9.1"
  spec.add_dependency "taskmapper-github", "~> 0.12.1"
  spec.add_dependency "taskmapper-trello", "~> 0.0.1"
  # spec.add_dependency "activemodel", "~> 4.0.3"
  # spec.add_dependency "activesupport", "~> 4.0.3"
  spec.add_dependency "configliere", "~> 0.4.18"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.99.0.beta2"
  # this an old version enforcement, since current version has issue https://github.com/guard/listen/issues/149
  spec.add_development_dependency 'guard',       '= 1.8.3'
  spec.add_development_dependency 'guard-rspec', '>= 3.1.0'
  spec.add_development_dependency 'spec_coverage'
  spec.add_development_dependency 'vcr'

end
