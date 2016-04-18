require_relative "parking.rb"

class MotorBike
	def initialize
		@noise = "BRUMMM BRUM BRUM BRUM BRUUMMMMMMMMMMM"
		@wheels = 2
	end

	def start
		@noise
	end
	
	def wheels
		@wheels
	end
end