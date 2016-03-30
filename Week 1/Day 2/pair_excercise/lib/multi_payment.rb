#multi_payment class

class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        super(name, email)
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	if @hours_worked > 40
    		paycheck = (@salary/52)+((@hours_worked-40)*@hourly_rate)
    	else
    		paycheck = @salary/52
    	end
    end
end