# frozen_string_literal: true
source "https://rubygems.org"

gem 'sinatra'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'rake'

group :production do
  # Use Postgresql for ActiveRecord
  gem 'pg'
end

group :development, :test do
  # Use SQLite for ActiveRecord
  gem 'sqlite3'
  gem 'tux'
end
# gem "rails"
