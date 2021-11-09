require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'

get '/' do
  erb "<p>Hello Epta</p>"
end
