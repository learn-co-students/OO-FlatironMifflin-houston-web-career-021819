require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


Michael = Manager.new("Michael", "Sales", 50)
Kevin = Michael.hire_employee("Kevin",40000)
Jim = Michael.hire_employee("Jim",50000)
Angela = Michael.hire_employee("Angela",40900)

Ken = Manager.new("Ken Bramlett", "Base Assets", 61)
Tony = Ken.hire_employee("Tony", 80000)
Brittaney = Ken.hire_employee("Brittaney", 80500)



binding.pry
puts "done"