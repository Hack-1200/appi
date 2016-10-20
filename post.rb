# require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
set :database_file, 'config/database.yml'

class Post<ActiveRecord::Base
	
	validates :head, :body, :subject, presence: true


	
end