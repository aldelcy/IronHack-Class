#app.rb

require_relative "lib/person.rb"

person_1 = Person.new("Alfonso", 48)

puts person_1.name

person_1.name = "Josh"

puts person_1.name