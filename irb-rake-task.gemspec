# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "irb-rake-task"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martin Schuerrer"]
  s.email       = ["martin@schuerrer.org"]
  s.homepage    = ""
  s.summary     = %q{Provides a rake task that startes an IRB session like the rails console}
  s.description = %q{Provides a rake task that startes an IRB session like the rails console}

  s.rubyforge_project = "irb-rake-task"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("rake", ["~> 0.8.7"])
  s.add_runtime_dependency("rake", ["~> 0.8.7"])
end
