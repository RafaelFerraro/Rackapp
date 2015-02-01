ENV['RACK_ENV'] = 'test'

require 'rack/test'

describe MakeRequest do
  include Rack::Test::Methods

  def app
    MakeRequest.new
  end

  context 'when there are no query string' do
    it 'creates a new request' do
      expect(Rack::Request).to receive(:new)

      get '/'
    end
  end
end

# def call(env)
#   request = create_request(env)
#   message = request.params['message']

#   responds_to message
# end 