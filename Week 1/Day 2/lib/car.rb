#lib/car.rb

class Car 
	attr_accessor :color, :noise, :cities

	def initialize (color, noise)
		@color = color
		@noise = noise
		@cities = []
	end

	def start
		puts "The " + @color + " car goes " + @noise
	end

	def add_city(city)
		puts "Now visiting #{city}"
		@cities.push(city)
	end

	def visit_city
		puts "\nThe #{@color} car visited #{@cities.join(', ')}" 
	end

end