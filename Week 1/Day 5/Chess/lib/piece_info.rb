class Piece
	attr_accessor :x, :y, :name
	attr_reader :color

	def initialize(x, y, name, color)
		@coord = [x, y]
		@x = @coord[0]
		@y = @coord[1]
		@name = name
		@color = color
	end
end