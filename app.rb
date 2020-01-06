require 'sinatra'
require 'shotgun'

get '/' do
  'hello'
end 

get '/secret' do
  "Mag the mug"
end 
 

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end 

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end 

