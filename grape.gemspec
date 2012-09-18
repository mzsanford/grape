$:.push File.expand_path("../lib", __FILE__)
require "grape/version"

Gem::Specification.new do |s|
  s.name        = "mzsanford-grape"
  s.version     = "3.0.0.pre.2"
  s.authors     = ["Matt Sanford"]
  s.email       = ["matt@mzsanford.com"]
  s.homepage    = "https://github.com/mzsanford/grape"
  s.summary     = %q{A simple Ruby framework for building REST-like APIs.}
  s.description = %q{A Ruby framework for rapid API development with great conventions.}
  s.license     = "MIT"

  s.rubyforge_project = "grape"

  s.add_runtime_dependency 'rack'
  s.add_runtime_dependency 'rack-mount'
  # s.add_runtime_dependency 'rack-jsonp'
  s.add_runtime_dependency 'multi_json'
  s.add_runtime_dependency 'multi_xml'
  s.add_runtime_dependency 'hashie', '~> 1.2'
  s.add_runtime_dependency 'virtus'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'maruku'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rspec', '~> 2.9'
  s.add_development_dependency 'bundler'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
