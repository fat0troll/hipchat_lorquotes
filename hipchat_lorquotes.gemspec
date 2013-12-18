# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hipchat_lorquotes/version'

Gem::Specification.new do |spec|
  spec.name          = "hipchat_lorquotes"
  spec.version       = HipchatLorquotes::VERSION
  spec.authors       = ["Valdos Sine"]
  spec.email         = ["iam@toofat.ru"]
  spec.description   = %q{Posting a random quote from LORQuotes}
  spec.summary       = %q{This gem allows you to post random LORQuotes quote to any HipChat room}
  spec.homepage      = "http://delta-zet.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hipchat"
  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
