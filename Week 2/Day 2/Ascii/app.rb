require "sinatra"
require "artii"

get "/ascii/:input" do
	erb :word
end