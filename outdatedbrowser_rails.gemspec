$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "outdatedbrowser_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "outdatedbrowser_rails"
  s.version     = OutdatedbrowserRails::VERSION
  s.authors     = ["Luisa Lima"]
  s.email       = ["luisamoyalima@gmail.com"]
  s.homepage    = "https://github.com/luisalima/outdatedbrowser_rails"
  s.summary     = "Adds outdatedbrowser assets to the rails asset pipeline."
  s.description = "A gem to automate using outdated-browser with Rails >= 4."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 6"

  s.test_files = Dir["spec/**/*"]
  s.add_development_dependency "capybara", "~> 2.14"
  s.add_development_dependency "rspec-rails", "~> 3"
end
