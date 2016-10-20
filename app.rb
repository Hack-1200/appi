require 'sinatra'
# require './post'
require 'json'
# require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
# set :database_file, 'config/database.yml'

class Post<ActiveRecord::Base
	
	validates :subject, presence: true
	# validates :body, presence: true
	# validates :subject, presence: true

	attr_accessor :head, :body, :subject
end

get '/' do
	@pp=Post.all 
end

post '/' do
	pp=Post.new(params)
	if pp.save?
		html :saved
	else
		pp.errors.messages
	end
end