# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reapples/version'

Gem::Specification.new do |gem|
  gem.name          = "reapples"
  gem.version       = Reapples::VERSION
  gem.authors       = ["Ryan Sandridge"]
  gem.email         = ["ryan@sandridgelabs.com"]
  gem.description   = %q{A Simple AppleScript REPL}
  gem.summary       = %q{An interactive shell for AppleScript}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
end
