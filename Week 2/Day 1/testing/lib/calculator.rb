class StringCalculator
	def initialize
		
	end
	def add(string)
		@string = string.split(/\D/)

		total = 0
		@string.each do |number|
			total += number.to_i
		end
		total
	end
end