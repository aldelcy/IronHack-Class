require_relative "lib/login_check.rb"
require_relative "lib/run_program.rb"


message = ""

# until message.include?("SUCCESS")
	
# 	puts "Enter your credentials here"
# 	puts "username:"
# 	username = gets.chomp

# 	puts "\npassword:"
# 	password = gets.chomp

# 	check_login = LoginCheck.new(username, password)
# 	check_login.run_credentials
# 	message = check_login.message	

# 	puts "\n"+message

# end

# if message.include?("SUCCESS")
		
# 	phrase = ""
# 	until phrase == "exit"
# 		puts "Enter your message:"
# 		phrase = gets.chomp

# 		my_phrase = RunProg.new(phrase)

# 		puts "Your message has : #{my_phrase.word_count} Words."
# 	end

# 	message = "logged out"

# else
# 	puts " You are not logged in"
# end


my_user = User.new("Josh", "password")

if LoginCheck.new.authenicate(my_login)
	phrase = gets.chomp
	prog = RunProg.new(phrase)
	prog.check_length
end

