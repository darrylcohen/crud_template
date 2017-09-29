
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/login' do
  erb :login
end

get '/things' do
  erb :things
end

#When clicking on a new item
get '/things/new' do
  erb :new
end

# When clicking to view an item
get '/things/:id' do
  erb :show

end

get '/things/1/edit' do
  erb :edit

end

put '/things/1' do
  redirect "/things"
end

delete '/things/1'  do
  redirect '/things'

end

post '/things' do
  redirect '/things'
end

post '/session' do
  email = params[:email] #set in Login erb
  redirect '/things'
  # else
  #   @message = 'Incorrect email or password'
  #   erb :login #not redirect as want to keep variables
  # end
end
