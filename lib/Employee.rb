
class Employee

  attr_accessor :name, :salary, :manager

@@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def manager_name
    self.manager.name
  end


  def self.all
    @@all
  end

  def self.paid_over(threshold)
    @@all.select do |employee|
      employee.salary > threshold
    end
  end

  def self.find_by_department(department)
    @@all.find do |employee|
      employee.manager_name.department == department
    end
  end

  def tax_bracket
    @@all.select do |employee|
      employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
    end
  end

end
