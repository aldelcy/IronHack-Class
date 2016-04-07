#CHESS_GAME
require_relative "lib/pieces.rb"
require_relative "lib/board.rb"
require_relative "lib/game.rb"

# CREATING pieces WITH STARTING POSITIONS
#-----------------(x, y, name)

# ROOK
br_l = Rook.new(1, 8, "bro", "black")
br_r = Rook.new(8, 8, "bro", "black")
wr_l = Rook.new(1, 1, "wro", "white")
wr_r = Rook.new(8, 1, "wro", "white")

# KNIGHT
bkn_l = Knight.new(2, 8, "bkn", "black")
bkn_r = Knight.new(7, 8, "bkn", "black")
wkn_l = Knight.new(2, 1, "wkn", "white")
wkn_r = Knight.new(7, 1, "wkn", "white")

# BISHOP
bb_l = Bishop.new(3, 8, "bbi", "black")
bb_r = Bishop.new(6, 8, "bbi", "black")
wb_l = Bishop.new(3, 1, "wbi", "white")
wb_r = Bishop.new(6, 1, "wbi", "white")

# KING
bk = King.new(5, 8, "bki", "black")
wk = King.new(5, 1, "wki", "white")
# QUEEN
bq = Queen.new(4, 8, "bqu", "black")
wq = Queen.new(4, 1, "wqu", "white")

#==================================================

#CREATING THE CHESS BOARD
chess = Board.new
pieces = [br_l, br_r, wr_l, wr_r, bkn_l, bkn_r, wkn_l, wkn_r, bb_l, bb_r, wb_l, wb_r, bk, wk, bq, wq]

pieces.each do |item|
	chess.add_to_board(item)
end

pawns = {}

(1..8).each do |item|
	pawns["bp_#{item}"] = BlackPawn.new(item, 7, "bp#{item}", "black")
	chess.add_to_board(pawns["bp_#{item}"])

	pawns["wp_#{item}"] = WhitePawn.new(item, 2, "wp#{item}", "white")
	chess.add_to_board(pawns["wp_#{item}"])
end

#==================================================

chess.chess_board

puts "\nwhat piece would you like to move?"
mov_piece = gets.chomp

puts "\nwhere would you like to move it?"
mov_loc = gets.chomp

mov_piece_cord = mov_piece.split(",")
mov_loc_cord = mov_loc.split(",")

chess.move_actions(mov_piece_cord[0], mov_piece_cord[1], mov_loc_cord[0], mov_loc_cord[1])

chess.chess_board