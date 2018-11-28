require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = 1 + rand(99)
guesses_left = 10
correct = false



get '/' do
  #throw params.inspect 
  
  message = check_guess(params["guess"])
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}

  #erb :index
end

def check_guess(guess)
	if guess.nil?
		return "Pick a number 1-100"
	else
		if guess.to_i > SECRET_NUMBER + 5 
	  		return "Whoa! Way Too High"
	    elsif guess.to_i < SECRET_NUMBER - 5 
	  		return "Yikes! Way Too Low"
	 	elsif guess.to_i > SECRET_NUMBER 
	  		return "High...But Almost!" 
	  	elsif guess.to_i < SECRET_NUMBER 
	  		return "Low... But Almost!"
	    elsif  guess.to_i == SECRET_NUMBER 
	    	correct = true
	  		return "CONGRATS! You have guessed correctly!"
	  	end 
	end
end
