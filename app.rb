# frozen_string_literal: true

require './config/environment'
require 'sinatra/activerecord'
require_relative 'services/web_tracking_service'
require 'json'


class App
  def self.call
    WebTrackingService.new.fetch_data
    puts "Total Visits #{Visit.count}"
  end
end

require_relative 'models/visit'
require_relative 'models/page_view'
