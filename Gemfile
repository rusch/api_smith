source "https://rubygems.org/"

gemspec

gem 'hashie', ENV.fetch('HASHIE_VERSION', '< 4.2')
gem 'json'

group :development do
  gem 'rake'
  gem 'awesome_print'
end

group :test do
  gem 'rspec'
  gem 'sham_rack'
  gem 'sinatra' # for sham_rack
end
