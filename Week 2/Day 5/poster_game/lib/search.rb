class Search
	attr_accessor :search, :title, :rating, :movie_wt_poster, :years
	def initialize(search)
		@search = search

		data = Imdb::Search.new(search)
		@movie = data.movies[0..15]
		@movie_wt_poster = []
		@years = []

		@movie.each do |item|
			if item.poster != nil && @movie_wt_poster.length<9
				@movie_wt_poster << item
				@years << item.year
			end
		end
		
	end

	def the_title
		@movie.each do |item|
			@title = item.title
			@title
		end
	end
end