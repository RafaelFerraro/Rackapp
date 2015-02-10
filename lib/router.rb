require 'rack/router'

module Rackapp
  module Application
    module_function

    def router
      Rack::Router.new do
        get '/customers' => CustomersController 
        get '/products'  => ProductsController
      end
    end
  end
end

Dir['./lib/**/*.rb', './app/**/*.rb'].each { |file| require file }