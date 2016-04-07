require "colorize"

class LoginCheck
	attr_reader :credentials, :username, :password, :message
	def initialize(username, password)
		@username = username
		@password = password
	end

	
	def run_credentials
		@credentials = {
			:user1 => "aldelcy, 12345",
			:user2 => "bianca, 12345"
		}
		
		check = @credentials.has_value?("#{@username}, #{@password}")
		
		if check == true
			logged = "SUCCESS"
			cont = "Lets continue"
		else
			logged = ("FAILED").red
			cont = ("Try again").red
		end
		@message = logged+"\n"+cont+"\n\n"
	end
end

# check_login = LoginCheck.new("aldelcy", "12345")
# check_login.run_credentials
# puts check_login.logged