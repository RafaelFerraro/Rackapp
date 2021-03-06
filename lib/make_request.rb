require 'rubygems'
require 'rack'

class MakeRequest

  class << self
    attr_reader :response, :request

    def call(env)
      @request = create_request(env)
      message  = @request.params['message']

      responds_to message
    end

    private 

    def create_request(env)
      Rack::Request.new env
    end

    def responds_to message
      @response = handle_response message

      send_response
    end

    def handle_response message
      response = Rack::Response.new
      response.body = message ? [message] : ['Make a response']
      response['X-CUSTOM-HEADER'] = 'foo'
      response.status = 200

      response
    end

    def send_response
      @response.finish
    end

  end
  
end