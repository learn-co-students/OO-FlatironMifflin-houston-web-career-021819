class Employee
  attr_accessor :name, :salary, :manager_name
  @@all = [] 
  def initialize(name, salary, manager_name)
    self.name = name
    self.salary = salary
    self.manager_name = manager_name
    @@all << self  
  end

  def self.all
    @all
  end

  def self.paid_over(fixNum)
    over_sal = [] 
    self.all.each do |employee|
      if employee.salary > fixNum
        over_sal << employee.name
      end
    end
    over_sal
  end

  def self.find_by_department(dep)
    Manager.all_departments.each do |department|
      if department === dep
        return department.first
      end
    end
  end

  def tax_bracket
    tax_array = []
    self.all.each do |employee|
      if employee.salary >= 1000
        tax_array << employee.name
      end
    end
    tax_array
  end


end
