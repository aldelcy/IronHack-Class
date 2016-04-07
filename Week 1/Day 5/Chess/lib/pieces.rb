#PIECES
require_relative "piece_info.rb"
require_relative "move_value.rb"

class Rook < Piece
	include Move
	def move?(x, y)
		move_value(x, y)

		if (@nw_x==0 && @nw_y>=0) || (@nw_x>=0 && @nw_y==0)
			true
		else
			false
		end
	end
end


#===============================


class King < Piece
	include Move

	def move?(x, y)
		move_value(x, y)

		if (@nw_x<=1 && @nw_y<=1)
			true
		else
			false
		end
	end
end


#===============================


class Knight < Piece
	include Move

	def move?(x, y)
		move_value(x, y)

		if (@nw_x==2 && @nw_y==1) || (@nw_x==1 && @nw_y==2)
			true
		else
			false
		end
	end
end


#===============================


class Bishop < Piece
	include Move

	def move?(x, y)
		move_value(x, y)

		if (@nw_x==@nw_y)
			true
		else
			false
		end
	end
end


#===============================


class Queen < Piece
	include Move
	
	def move?(x, y)
		move_value(x, y)

		if (@nw_x==@nw_y) || (@nw_x==0 && @nw_y>=0) || (@nw_x>=0 && @nw_y==0)
			true
		else
			false
		end
	end
end


#===============================


class BlackPawn < Piece
	include Move
	
	def move?(x, y)
		move_value(x, y)

		if @nw_x==0 && (y<=@y && @nw_y<=2)
			true
		else
			false
		end
	end
end

class WhitePawn < Piece
	include Move
	
	def move?(x, y)
		move_value(x, y)

		if @nw_x==0 && (y>=@y && @nw_y<=2)
			true
		else
			false
		end
	end
end