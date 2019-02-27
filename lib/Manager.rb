require 'pry'
class Manager
  attr_accessor :name, :department, :age
  @@all = []
  def initialize(name, department, age)
    self.name = name
    self.department = department
    self.age = age
    @@all << self
  end
  
  def self.all 
    @@all
  end

  def hire_employee(name, salary)
    Employee.new(name, salary) 
  end

  def self.all_departments
    depart_array = [] 
    self.all.each do |x|
      depart_array << x.department
    end
  end

  def self.average_age
    manager_ages = []
    self.all.each do |manager|
      manager_ages << manager.age
    end
    manager_ages.inject {|sum, x| sum + x} / manager_ages.size
  end

end
