# frozen_string_literal: true

source 'https://rubygems.org'

gem 'json', '~> 2.1'
gem 'mysql2'
gem 'rake', '~> 12.1'
gem 'sinatra', '~> 2.2'
gem 'sinatra-activerecord'
gem 'auto_increment'

group :test do
  gem 'rack-test', '~> 0.7.0'
  gem 'rspec', '~> 3.0'
  gem 'factory_bot'
  gem 'shoulda-matchers'
  gem 'simplecov'
end

group :development, :test do
  gem 'byebug'
  gem 'faker'
  gem 'rubocop', require: false
end
