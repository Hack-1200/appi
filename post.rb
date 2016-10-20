require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
set :database_file, 'config/database.yml'

class Post<ActiveRecord::Base
	
	validates :head, presence: true
	validates :body, presence: true
	validates :subject, presence: true

	attr_accessor :head, :body, :subject
end