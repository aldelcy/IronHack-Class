require "sinatra"
require "sinatra/reloader"
require "imdb"
require "rubygems"

require_relative "lib/search.rb"

enable(:sessions)

get '/?' do
	erb(:home)
end

post '/?' do
	search_str = params[:search].to_s
	@submit = params[:submit]

	my_search = Search.new(search_str)
	session[:search] = search_str

	puts "Searching for "+session[:search]+" Posters"

	@movie_list = my_search.movie_wt_poster
	@trivia =((my_search.years).sample(1)[0])

	erb(:home)
end