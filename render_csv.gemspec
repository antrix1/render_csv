$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "render_csv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "render_csv"
  s.version     = RenderCsv::VERSION
  s.authors     = ["Andrej Dragojevic"]
  s.email       = ["andrejdr.93@gmail.com"]
  s.homepage    = "https://github.com/antrix1/render_csv"
  s.summary     = "Rails plugin for rendering csv files from your controllers"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "better_errors"
  s.add_development_dependency "binding_of_caller"
end
