#app.rb

require_relative "lib/car.rb"

car_1 = Car.new("Black", "BROOOOOOM")

car_1.add_city("Miami")
car_1.add_city("Boston")
car_1.add_city("Tampa")


puts car_1.visit_city