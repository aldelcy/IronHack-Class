#hourly class
require_relative "hourly_module.rb"


class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    include HourlyPay

    def calculate_salary
    	hourly_pay
    end

    
end