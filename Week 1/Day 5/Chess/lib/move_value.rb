module Move
	def move_value(x, y)
		@nw_x = (@x-x).abs
		@nw_y = (@y-y).abs
	end
end