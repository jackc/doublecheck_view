# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doublecheck_view/version'

Gem::Specification.new do |spec|
  spec.name          = "doublecheck_view"
  spec.version       = DoublecheckView::VERSION
  spec.authors       = ["Jack Christensen"]
  spec.email         = ["jack@jackchristensen.com"]

  spec.summary       = %q{Test doublecheck views with ActiveRecord}
  spec.homepage      = "https://github.com/jackc/doublecheck_view"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', "> 3.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
