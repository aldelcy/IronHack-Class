class Tests

	def RookTest
		puts "\nRook tests:"
		puts "-----------"
		puts "These should be true:"
		# Moving vertically down
		puts br_left.move?(1, 4)
		# Moving horizontally right (ignoring obstructions)
		puts br_left.move?(6, 8)

		puts "\nThese moves should be false:"
		# Diagonal L move
		puts wr_right.move?(6, 2)
		# Diagonal Bishop move
		puts wr_right.move?(4, 5)
	end

	def KingTest
		puts "\nKING tests:"
		puts "-----------"
		puts "These should be true:"
		# Moving vertically down
		puts bk.move?(5, 7)
		# Moving horizontally right (ignoring obstructions)
		puts bk.move?(6, 8)

		puts "\nThese moves should be false:"
		# Diagonal L move
		puts wk.move?(5, 4)
		# Diagonal Bishop move
		puts wk.move?(2, 1)
	end

	def KnightTest
		puts "\nKNIGHT tests:"
		puts "-----------"
		puts "These should be true:"
		# Moving vertically down
		puts bkn_left.move?(1, 6)
		# Moving horizontally right (ignoring obstructions)
		puts bkn_left.move?(4, 7)

		puts "\nThese moves should be false:"
		# Diagonal L move
		puts wkn_left.move?(2, 1)
		# Diagonal Bishop move
		puts wkn_left.move?(2, 1)
	end

	def BishopTest
		puts "\nBishop tests:"
		puts "-----------"
		puts "These should be true:"
		# Moving vertically down
		puts bb_left.move?(2, 7)
		# Moving horizontally right (ignoring obstructions)
		puts bb_left.move?(6, 5)

		puts "\nThese moves should be false:"
		# Diagonal L move
		puts wb_left.move?(3, 8)
		# Diagonal Bishop move
		puts wb_left.move?(5, 1)
	end

	def QueenTest
		puts "\nBishop tests:"
		puts "-----------"
		puts "These should be true:"
		# Moving vertically down
		puts bp1.move?(1, 7)
		# Moving horizontally right (ignoring obstructions)
		puts bp1.move?(1, 7)

		puts "\nThese moves should be false:"
		# Diagonal L move
		puts wp1.move?(1, 2)
		# Diagonal Bishop move
		puts wp1.move?(1, 2)
	end

end