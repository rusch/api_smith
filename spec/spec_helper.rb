ENV["RAILS_ENV"] ||= 'test'

require 'rspec'

require 'pathname'
require 'bundler/setup'

Bundler.setup
Bundler.require :default, :test

require 'api_smith'
require 'rr'
require 'json'

Dir[Pathname(__FILE__).dirname.join("support/**/*.rb")].each { |f| require f }
RSpec.configure do |config|
  config.mock_with :rr
  config.expect_with(:rspec) { |c| c.syntax = [ :should, :expect ] }
end
RSpec::Expectations.configuration.on_potential_false_positives = :nothing
