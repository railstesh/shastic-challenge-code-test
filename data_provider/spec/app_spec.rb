# frozen_string_literal: true

require 'rack/test'
require './app'

RSpec.describe App do

  include Rack::Test::Methods

  def app
    App.new
  end

  describe 'GET /data' do

    it 'is successful' do
      get '/data'
      expect(last_response).to be_ok
    end

    it 'returns the json response' do
      get '/data'
      expect(last_response.body).not_to be_empty
    end

    it 'returns the multiple data in response' do
      get '/data'
      expect(last_response.body.length).to be > 1
    end
  end

  def json_response
    JSON.parse(last_response.body)
  end
end
