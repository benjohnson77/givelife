require "sinatra"
require "rack/test"
require "haml"
require "json"
require File.join(File.dirname(__FILE__), '../app.rb')
require File.join(File.dirname(__FILE__), '../game.rb')


# setup test environment
ENV['RACK_ENV'] = 'test'

set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end