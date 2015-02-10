class CustomersController < ApplicationController
  def response_handler request
    response        = Rack::Response.new
    response.body   = Customer.all
    response.status = 200

    response
  end
end