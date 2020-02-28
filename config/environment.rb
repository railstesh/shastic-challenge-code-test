# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV.fetch('RACK_ENV', :development))

configure :development do
  set :database_file, './database.yml'
end
