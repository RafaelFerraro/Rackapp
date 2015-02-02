ENV['RACK_ENV'] = 'test'

require 'rack/test'

describe MakeRequest do
  include Rack::Test::Methods
  let(:app) { MakeRequest }

  before do
    app
  end

  context 'when there are no query string' do

    before { get '/' }

    it 'responds with success' do
      expect(last_response.ok?).to be_truthy
    end

    it 'sets the request' do
      expect(app.request).to_not be_nil
    end

    it 'responds with status 200' do
      expect(last_response.status).to eq(200)
    end

    it 'responds with header' do
      expect(last_response['X-CUSTOM-HEADER']).to eq('foo')
    end

    it 'responds with Make a response body' do
      expect(last_response.body).to eq('Make a response')
    end

  end

  context 'when there are query string named message' do

    before { get '/', { message: 'I am a message' } }

    it 'responds with success' do
      expect(last_response.ok?).to be_truthy
    end

    it 'sets the request' do
      expect(app.request).to_not be_nil
    end

    it 'responds with status 200' do
      expect(last_response.status).to eq(200)
    end

    it 'responds with header' do
      expect(last_response['X-CUSTOM-HEADER']).to eq('foo')
    end

    it 'responds with Make a response body' do
      expect(last_response.body).to eq("I am a message")
    end
    
  end
end