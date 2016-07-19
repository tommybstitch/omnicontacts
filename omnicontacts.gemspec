# encoding: utf-8
require File.expand_path('../lib/omnicontacts', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'omnicontacts'
  gem.description = %q{A generalized Rack middleware for importing contacts from major email providers.}
  gem.authors = ['Diego Castorina', 'Jordan Lance', 'Asma Tameem', 'Randy Villanueva']
  gem.email = ['diegocastorina@gmail.com', 'voorruby@gmail.com']

  gem.add_runtime_dependency 'rack'
  gem.add_runtime_dependency 'json'

  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'rspec'

  gem.version = OmniContacts::VERSION
  gem.files = [
    "Gemfile",
    "Gemfile.lock",
    "omnicontacts.gemspec",
    "Rakefile",
    "README.md",
    "lib/omnicontacts.rb",
    "lib/omnicontacs/builder.rb",
    "lib/omnicontacs/http_utils.rb",
    "lib/omnicontacs/importer.rb",
    "lib/omnicontacs/integration_test.rb",
    "lib/omnicontacs/parse_utils.rb",
    "lib/omnicontacts/authorization/oauth1.rb",
    "lib/omnicontacts/authorization/oauth2.rb",
    "lib/omnicontacts/importer/facebook.rb",
    "lib/omnicontacts/importer/google_oauth_2.rb",
    "lib/omnicontacts/importer/hotmail.rb",
    "lib/omnicontacts/importer/linkedin.rb",
    "lib/omnicontacts/importer/outlook.rb",
    "lib/omnicontacts/importer/yahoo.rb",
    "lib/omnicontacts/middleware/base_oauth.rb",
    "lib/omnicontacts/middleware/oauth1.rb",
    "lib/omnicontacts/middleware/oauth2.rb",
  ]
  gem.homepage = "https://github.com/tommybstitch/omnicontacts"
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
  gem.summary = gem.description
  gem.test_files = `git ls-files -- {spec}/*`.split("\n")
end
