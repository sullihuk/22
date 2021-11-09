require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'

get '/' do
  erb "Hello"
end
