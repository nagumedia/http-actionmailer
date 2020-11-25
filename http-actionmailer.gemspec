$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "http_actionmailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "http-actionmailer"
  spec.version     = HttpActionMailer::VERSION
  spec.authors     = ["Nasrul Gunawan"]
  spec.email       = ["nasrul.remaza@gmail.com"]
  spec.homepage    = "https://github.com/nagumedia/http-actionmailer"
  spec.summary     = "Summary of Http::Actionmailer."
  spec.description = "Description of Http::Actionmailer."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4", ">= 5.2.4.4"
  spec.add_dependency "httparty"

  spec.add_development_dependency "sqlite3"
end
