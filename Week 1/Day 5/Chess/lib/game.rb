require_relative "board.rb"

class Game
	attr_accessor :orig_x, :orig_y, :mov_x, :mov_y
	def initialize(x, y, mov_x, mov_y)
		@orig_x = x
		@orig_y = y
		@mov_x = mov_x
		@mov_y = mov_y
	end

	def move_actions
		
	end
end