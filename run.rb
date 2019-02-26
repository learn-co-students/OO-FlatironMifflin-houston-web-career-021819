require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new(name: 'Michael', department: 'Paper', age: 50, employees: [] )
alan = Manager.new(name: 'Alan', department: 'IT', age: 30, employees: ['Adam', 'Olivia'] )

adam = Employee.new(name: 'Adam', salary: 100000, manager_name: 'Alan', age: 29)
olivia = Employee.new(name: 'Olivia', salary: 100100, manager_name: 'Alan', age: 25)

test = Employee.paid_over(100050)

test2 = Employee.find_by_department('IT')

binding.pry

puts "done"
