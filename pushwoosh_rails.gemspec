$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pushwoosh_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pushwoosh_rails"
  s.version     = PushwooshRails::VERSION
  s.authors     = ["Denis Jacquemin"]
  s.email       = ["denis.jacquemin@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Gem to wrap Pushwoosh API."
  s.description = "Gem to wrap Pushwoosh API."
  s.license     = "MIT"

  s.add_development_dependency "minitest"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"

  s.add_dependency "faraday"
  s.add_dependency "json"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
