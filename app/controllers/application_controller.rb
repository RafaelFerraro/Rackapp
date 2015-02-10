class ApplicationController
  class << self
    def call env
      response = self.new.response_handler(Rack::Request.new(env))

      render_response response
    end

    private 

    def render_response response
      response.finish
    end
  end
end