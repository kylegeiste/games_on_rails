class RpsController < ApplicationController

	def new
	end

	def show
		# # sets random number to something between 0 and 2 (three possible throws)
		# # 0 will equal rock
		# # 1 will equal paper
		# # 2 will equal scissors
		throw_randomizer = rand(3)
		if throw_randomizer == 0
			@opponent_throw = "rock"
		elsif throw_randomizer == 1
			@opponent_throw = "paper"
		else
			@opponent_throw = "scissors"
		end  

		# # gets the user throw from params
		# # the param is named 'id' because of a route convention
		# # lastly, we want to turn it from a string to an integer
		# # that way, we can compare it to the opponent_throw (which is an int)	
		@player_throw = params[:id]

		:score = 10
	end

end