# frozen_string_literal: true

require './config/environment'
require 'json'

# Routing definition of API's
class App < Sinatra::Base

  get '/data' do
    response = JSON.parse(File.read('../samples/api_response.json'))
    response.to_json
  end
end
