#BOARD
require_relative "piece_info.rb"

class Board
	attr_accessor :board
	def initialize

		@board = [[],[],[],[],[],[],[],[]]
	end

	def add_to_board(piece)
		a = piece.x.to_i
		b = piece.y.to_i

		@board[b-1][a-1] = piece.name

		(2..5).each do |c|
			(0..7).each do |d|
				@board[c][d] = " * "
			end
		end
	end

	def chess_board
		@board.each_with_index do |item, index|
			@brk = "  -"+("-"*6)*8
			puts @brk
			print (index-8).abs.to_s+" "
			item.each do |item2|
				print "| "+item2+" "
			end
			puts "| \n"
		end
		puts @brk
		puts "0    1     2     3     4     5     6     7     8  "
	end

	def move_actions(orig_x, orig_y, mov_x, mov_y)
		@orig_x = (orig_x.to_i-1)
		@orig_y = (orig_y.to_i-8).abs
		@mov_x = (mov_x.to_i-1)
		@mov_y = (mov_y.to_i-8).abs
		puts "\n"
		@board[@mov_y][@mov_x] = @board[@orig_y][@orig_x]
		@board[@orig_y][@orig_x] = " * "
	end

end
