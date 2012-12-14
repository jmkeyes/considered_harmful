# -*- encoding: utf-8 -*-
require File.expand_path('../lib/considered_harmful', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "considered_harmful"
  gem.version       = ConsideredHarmful::VERSION

  gem.authors       = ["Joshua M. Keyes"]
  gem.email         = ["joshua.michael.keyes@gmail.com"]
  gem.homepage      = "https://github.com/jmkeyes/considered_harmful"

  gem.description   = %q{Dynamically adds support for the goto statement to Ruby.}
  gem.summary       = %q{Yo dawg, I heard you like goto.}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.require_paths = ["lib"]
end
