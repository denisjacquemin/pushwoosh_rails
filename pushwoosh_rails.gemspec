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
  s.summary     = "Pushwoosh wrapper for Rails."
  s.description = "PushwooshRails is a Pushwoosh wrapper for Ruby on Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
