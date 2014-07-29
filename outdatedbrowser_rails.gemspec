$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "outdatedbrowser_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "outdatedbrowser_rails"
  s.version     = OutdatedbrowserRails::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OutdatedbrowserRails."
  s.description = "TODO: Description of OutdatedbrowserRails."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.19"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.test_files = Dir["spec/**/*"]
end
