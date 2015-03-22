require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "json"
require "geocoder"

require File.join(File.dirname(__FILE__), 'lib/state_registry.rb')
require File.join(File.dirname(__FILE__), 'app.rb')

set :run, false
set :raise_errors, true
 
run Sinatra::Application