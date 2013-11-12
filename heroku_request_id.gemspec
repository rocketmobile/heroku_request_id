# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_request_id/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_request_id"
  spec.version       = HerokuRequestId::VERSION
  spec.authors       = ["Chad Bailey"]
  spec.email         = ["chad@rocketmobile.co"]
  spec.description   = %q{Use Heroku's HTTP-Request-ID header as X-Request-ID.}
  spec.summary       = %q{Use Heroku's HTTP-Request-ID header as X-Request-ID.}
  spec.homepage      = "http://rocketmobile.co"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
