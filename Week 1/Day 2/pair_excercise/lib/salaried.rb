#salaried class

class SalariedEmployee < Employee
    def initialize(name, email, salary)
        super(name, email)
        @salary = salary
    end

    def calculate_salary
      paycheck = @salary/52
    end
end