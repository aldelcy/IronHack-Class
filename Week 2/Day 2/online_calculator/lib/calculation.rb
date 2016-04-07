class Operation
	def initialize(first, sencond, oper)
		@first_value = first.to_f 
		@second_value = sencond.to_f
		@operation_value = oper
	end

	def do_it
		if @operation_value == "add"
			@result = @first_value+@second_value
		elsif @operation_value == "subtract"
			@result = @first_value-@second_value
		elsif @operation_value == "multiply"
			@result = @first_value*@second_value
		elsif @operation_value == "divide"
			@result = @first_value/@second_value
		end
		@result
	end
end