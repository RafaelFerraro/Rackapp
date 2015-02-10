class ProductsController < ApplicationController
  def response_handler request
    response        = Rack::Response.new
    response.body   = Product.all
    response.status = 200

    response
  end
end