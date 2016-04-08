class ImAscii
	attr_accessor :movie_list
	def initialize(array)
		@movie_list = array.collect{|m|
			Movie.new(m)
		}
	end

	def print_movies
		@movie_list.each_with_index do |movie, x|
			puts "#{(x+1)} - #{movie.title}"
			puts "Rating: #{movie.rating}"
			puts "___________\n\n"
		end
	end

	def print_rating
		ratings = @movie_list.collect{|m|
			m.rating
		}

		display = ""

		10.downto(1) do |x|
			display += "|"
			display += ratings.collect{|r|
				r >= x ? "*" : " " 
			}.join("|")
			display += "|\n"
		end
		display += 1.upto(ratings.length).collect{"__"}.join("")
		display += "\n|"
		display += 1.upto(ratings.length).collect{|x|x}.join("|")
		display += "|\n\n"

		puts display
	end
end