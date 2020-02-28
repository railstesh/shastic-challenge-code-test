# frozen_string_literal: true

require './app'
require 'faker'

RSpec.describe App do
  include Rack::Test::Methods

  def app
    App.new
  end

  it 'should fetch visits and pages' do
    App.call
    expect(Visit.count).to be > 1
  end
end
