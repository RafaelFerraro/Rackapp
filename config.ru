require './lib/router.rb'
use Rack::Reloader unless ENV['RUBY_ENV'] == 'production'

run Rackapp::Application.router