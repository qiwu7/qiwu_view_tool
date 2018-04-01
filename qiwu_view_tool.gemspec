
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "qiwu_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "qiwu_view_tool"
  spec.version       = QiwuViewTool::VERSION
  spec.authors       = ["Qi Wu"]
  spec.email         = ["qi@startyoshi.com"]

  spec.summary       = %q{Various view specific methods for personal applications.}
  spec.description   = %q{Provides generated html data for Rails application.}
  spec.homepage      = "https://rubygems.org/profiles/qiwu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
