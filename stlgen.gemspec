lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stlgen/version'

Gem::Specification.new do |spec|
  spec.name          = "stlgen"
  spec.version       = Stlgen::VERSION
  spec.authors       = ["Naoto Kaneko"]
  spec.email         = ["naoty.k@gmail.com"]
  spec.summary       = %q{STL generator.}
  spec.homepage      = "https://github.com/naoty/stlgen"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
