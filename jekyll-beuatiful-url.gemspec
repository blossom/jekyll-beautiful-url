# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/beuatiful_url/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-beuatiful-url"
  spec.version       = Jekyll::Timeago::VERSION
  spec.authors       = ["nikgraf"]
  spec.email         = ["nik@blossom.io"]
  spec.description   = %q{Beautiful Urls for Jekyll pages.}
  spec.summary       = %q{Beautiful Urls for Jekyll pages.}
  spec.homepage      = "https://github.com/blossom/jekyll-beautiful-url"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end