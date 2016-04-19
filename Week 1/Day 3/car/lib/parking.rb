class Parking
	attr_accessor :list
	def initialize(list)
		@list = list
	end

	def list_of_cars
		puts @list
	end

	def num_wheels
		sum = 0
		@list.each do |x|
			sum += x.wheels
			x
		end
	end
end