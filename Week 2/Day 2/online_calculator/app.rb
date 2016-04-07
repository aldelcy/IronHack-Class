require "sinatra"
require "sinatra/reloader"
require_relative "lib/calculation.rb"


get "/?" do
	erb(:all)
end

post "/?" do
	@first = params[:Number1].to_f
	@second = params[:Number2].to_f
	@sign = params[:button].downcase
	@operation = Operation.new(@first, @second, @sign)

	@command = params[:button].tr("eE", "")+"ing"

	if @sign == "add" || @sign == "subtract"
		@op_syntax = " and "
	else
		@op_syntax = " by "
	end

	@promt = "#{@command} #{@first}#{@op_syntax}#{@second} is:"

	erb(:all)		
end

post "/store" do
	# @id = 1
	out_file = File.open("operation_storage.txt", "a")
	out_file.puts(params[:store])
	out_file.puts("-------------")
	out_file.close
	# @id += 1
	redirect "/"
	# erb(:all)	
end