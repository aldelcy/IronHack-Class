require_relative "parking.rb"

class Car
	def initialize
		@noise = "VROOOM"
		@wheels = 4
	end
	
	def start
		@noise
	end
	
	def wheels
		@wheels
	end
end