require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'
#Test your code here

mgr1 = Manager.new("Sam", 26, "Marketing")
mgr2 = Manager.new("Steve", 30, "Sales")
mgr3 = Manager.new("Jane", 35, "Admissions")

emp1 = Employee.new("emp1", 8500, mgr1)
emp2 = Employee.new("emp2", 6500, mgr2)
emp3 = Employee.new("emp3", 9000, mgr3)
emp4 = Employee.new("emp4", 12000, mgr1)
find_by_department = Employee.find_by_department("Marketing")

tax_bracket = emp3.tax_bracket

hire_employee = mgr2.hire_employee("Jacob", 8000)
binding.pry
puts "done"
