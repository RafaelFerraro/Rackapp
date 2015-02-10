class ApplicationController
  class << self
    def call(env)
      self.new.response_handler(Rack::Request.new(env))
    end
  end
end