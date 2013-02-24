# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peerindex/version'

Gem::Specification.new do |gem|
  gem.name          = "peerindex"
  gem.version       = Peerindex::VERSION
  gem.authors       = ["Michael Fox"]
  gem.email         = ["mike@mikefox.info"]
  gem.description   = %q{Provides an interface to the four main endpoints of PeerIndex REST API.}
  gem.summary       = %q{Provides an interface to the PeerIndex REST API.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
