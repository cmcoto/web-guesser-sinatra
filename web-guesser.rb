require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = 1 + rand(99)
guesses_left = 10
correct = false



get '/' do
   
  erb :index
end

