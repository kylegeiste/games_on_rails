class SecretNumbersController < ApplicationController

	def new
	end

	def show
		#sets random number to something between 1 and five
		@secret_number = rand(5)+1

		# gets the user chosen number from params
		# the param is named 'id' because of a route convention
		# lastly, we want to turn it from a string to an integer
		# that way, we can compare it to the secret number (which is an int)	
		@chosen_number = params[:id].to_i
	end

end
