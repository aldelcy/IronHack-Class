#employee Payroll

require_relative "lib/employee.rb"
require_relative "lib/hourly.rb"
require_relative "lib/salaried.rb"
require_relative "lib/multi_payment.rb"
require_relative "lib/payroll.rb"

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

payroll = Payroll.new([josh, ted, nizar])

payroll.pay_employees

payroll.send_notif