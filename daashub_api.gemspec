# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daashub_api/version'

Gem::Specification.new do |spec|
  spec.name          = "daashub_api"
  spec.version       = DaashubAPI::VERSION
  spec.authors       = ["Piotr Brzózka"]
  spec.email         = ["ptbrzozka@gmail.com"]

  spec.summary       = %q{This gem is used to access Daashub API.}
  spec.description   = %q{This gem is used to access Daashub API.}
  spec.homepage      = "https://github.com/weemanjz/daashub_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 1.22"
  spec.add_dependency "httparty", "~> 0.13"
end
