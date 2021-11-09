require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'

get '/' do
  erb "<p>Hello Epta</p>"
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts 
end

get '/visit' do
  erb :visit
end
