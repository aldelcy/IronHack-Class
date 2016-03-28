class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each { |home| 
	puts "\n" + home.name + " in " + home.city
	puts "Price: $" + home.price.to_s + " a night."
}

prices = homes.map do |hm|
  hm.price
end

total_prices = prices.reduce do |sum, price|
  sum + price
end

avg_price = total_prices/prices.count

puts "\nThe average price of homes is: \n$" + avg_price.to_s