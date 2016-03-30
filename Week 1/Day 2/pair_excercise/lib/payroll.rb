#payroll class

require_relative "hourly.rb"
require_relative "salaried.rb"
require_relative "multi_payment.rb"

class Payroll
	attr_accessor :employees
    def initialize(employee)
        @employees = employee
    end

    def pay_employees
    	puts "This week's Payroll:\n\n"
    	
    	total_amnt = 0

    	@employees.each do |x|
      		 puts "Name: " + x.name 
      		 puts "E-mail: " + x.email
      		 puts "Paycheck: $" + x.calculate_salary.to_s
      		 puts "\n"

      		 total_amnt +=  x.calculate_salary
     	end

     	puts "Total pay for this week is: \n$"+total_amnt.to_s

  	end

  	def send_notif
  		puts "\n\nEMAILS SENT:"
  		@employees.each do |x|
  			puts "\nGood Afternoon "+x.name+", \nYou have just been paid.\nHave fun. \n\nManagement"
  			puts "--------------------------"
  		end
  	end

end