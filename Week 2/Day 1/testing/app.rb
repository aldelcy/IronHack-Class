require_relative "lib/calculator.rb"

calculator = StringCalculator.new


puts calculator.add("7,6") == 13
puts calculator.add("9,1") == 10
puts calculator.add("5") == 5
puts calculator.add("3") == 3
puts calculator.add("") == 0

puts "=============="

puts calculator.add("7,6,2,3") == 18
puts calculator.add("9,1,3,2") == 15
puts calculator.add("5,2,1,3")

puts "=============="

puts calculator.add("7&5") == 12
puts calculator.add("7^3") == 10
puts calculator.add("5%") == 5
puts calculator.add("$") == 0