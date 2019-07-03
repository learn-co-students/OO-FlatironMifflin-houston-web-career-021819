class Employee
  attr_accessor :name, :salary, :manager
  
    @@all = []

  def initialize(name, salary, manager)
     @name = name
     @salary = salary
     @manager = manager
     @@all << self
  end

  def self.all
      @@all
  end

  def manager_name
    @manager.name
  end
 
  def self.paid_over(amount)
    the_employees = []
    @@all.select do |employee|
      if employee.salary > amount
         the_employees << employee
      end
    end
    the_employees
  end

  def self.find_by_department(department)
    @@all.select do |employee|
        employee.manager.department == department
    end
  end

  def tax_bracket
    @@all.select do |current_employee|
       current_employee.salary < self.salary + 1000 &&  
       current_employee.salary > self.salary - 1000   
    end
  end
end
