# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina_extensions/version'

Gem::Specification.new do |gem|
  gem.name          = "mina_extensions"
  gem.version       = MinaExtensions::VERSION
  gem.authors       = ["marcosbeirigo"]
  gem.email         = ["marcosbeirigo@gmail.com"]
  gem.description   = "Set of mina extension tasks"
  gem.summary       = "Set of mina extension tasks"
  gem.homepage      = "https://github.com/marcosbeirigo/mina_extensions"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
