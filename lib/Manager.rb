
class Manager

  attr_accessor :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
  
  def employees
    Employee.all.select do |employee|
      employee.manager_name == self.name
    end
  end

  def self.all_departments
    departments = []
    @@all.select do |manager|
      departments << manager.department
    end
    departments
  end

  def self.average_age
    total_age = 0
    @@all.each do |manager|
      total_age = total_age + manager.age
    end
    average_age = total_age.to_f / @@all.length.to_f
  end

end
