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

post '/visit' do

  @customer =params[:customer]
  @date = params[:date]
  @phone = params[:phone]
  @barber = params[:barber]
  dbase = File.open 'public/customers.txt', 'a'
  dbase.puts  "#{@customer} | #{@date} | #{@phone} | #{@barber} \n"
  dbase.close
  erb :visit
end

post '/contacts' do
  @email = params[:email]
  @report = params[:report]
  messages = File.open 'public/messages.txt', 'a'
  messages.puts "#{@email} | #{@report}\n"
  messages.close
  erb "<p>Спасибо за ваш отзыв</p> <a href='/'>HOME</a>"
end
