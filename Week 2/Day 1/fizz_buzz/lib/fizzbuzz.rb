class FizzBuzz
	def change_input(string)
		if string % 5 == 0 && string % 3 == 0
			"FizzBuzz"
		elsif string % 5 == 0
			"Buzz"
		elsif string % 3 == 0
			"Fizz"
		else
			"Neither"
		end
	end
end