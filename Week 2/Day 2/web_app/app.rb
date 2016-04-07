require "sinatra"
require_relative "lib/greeting.rb"

get "/" do
	"fghjkl,;"
end
get "/hi" do
	"Hello World"
end

get "/about" do
	@hello = Greeting.new
	erb :author
end

get "/today" do
	erb :today_time
end

get "/hours/ago/:input" do
	@input = params[:input].to_i
	@right_now = Time.now.strftime("%l:%M:%S")
	@t = Time.now-(@input*60*60)
	@time = @t.strftime("%l:%M:%S")
	erb :time
end