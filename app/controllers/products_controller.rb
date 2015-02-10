class ProductsController < ApplicationController
  def response_handler request
    [200, { "Content-Type" => "text/html" }, [request.path_info]]
  end
end