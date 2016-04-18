require_relative "lib/Car.rb"
require_relative "lib/MotorBike.rb"
require_relative "lib/Boat.rb"
require_relative "lib/parking.rb"

my_car = Car.new
my_bike = MotorBike.new
my_boat = Boat.new

vehicles = [my_car, my_boat, my_bike]

parking = Parking.new(vehicles)

puts parking.num_wheels