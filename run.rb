require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


fred = Manager.new("fred", "css", 45)
dave = Manager.new("Dave", "adv", 23)
bill = Manager.new("Bill", "bio", 13)
ernie = Manager.new("Ernie", "sales", 61)

kyle = Employee.new("kyle", 45000, fred)
mark = Employee.new("mark", 450000, fred)
cory = Employee.new("cory", 15000, fred)
tom = Employee.new("tom", 2700, fred)
rochell = Employee.new("rochell", 56000, fred)
jing = Employee.new("jing", 61000, fred)
zoe = Employee.new("zoe", 72000, fred)
adam = Employee.new("adam", 73000, fred)
olivia = Employee.new("olivia", 71500, dave)
joshua = Employee.new("joshua", 45000, dave)
trey = Employee.new("trey", 46000, dave)


#Test your code here


binding.pry
puts "done"
