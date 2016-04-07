require_relative "parking.rb"

class Boat
	def initialize
		@noise = "BOOOOOOMMMMMMMMPPPP"
		@wheels = 0
	end

	def start
		@noise
	end
	
	def wheels
		@wheels
	end
end