require "sinatra"
require "sinatra/reloader"
require_relative "lib/passwordchecker.rb"

enable(:sessions)

get "/?" do
	erb(:signup)	
end

post "/?" do
	@e = params[:email]
	@p = params[:password]
	@submit = params[:check]

	my_cred = PasswordChecker.new
	
	@result = my_cred.check_password(@e, @p)

	erb(:signup)
end

get "/congrats" do
	erb(:congrats)	
end