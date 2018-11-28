require 'sinatra'
require 'sinatra/reloader'

number = 1 + rand(99)
guesses_left = 10
correct = false



get '/' do
  #throw params.inspect 
  guess = params["guess"]
  erb :index, :locals => {:number => number}

  #erb :index
end

