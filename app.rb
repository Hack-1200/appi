require 'sinatra'
require './post'
require 'json'

get '/' do
	# @pp=Post.all 
	"Hello world"
end

post '/' do
	pp=Post.new(params)
	if pp.save?
		html :saved
	else
		pp.errors.messages
	end
end