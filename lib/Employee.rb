class Employee
  @@all = []
  attr_accessor :name, :salary, :manager_name, :age

  def initialize(name:, salary:, manager_name:, age:)
    self.name = name
    self.salary = salary
    self.age = age
    self.manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over (salary_ceiling)
    high_rollers = []
    self.all.each do |employee|
      if employee.salary > salary_ceiling
        high_rollers << employee.name
      end
    end
    return high_rollers
  end

  def self.find_by_department (department)
    correct_manager = Manager.all.select {|manager| manager.department == department}
    managers_name = correct_manager[0].name
    self.all.first {|employee| employee.manager_name == managers_name}
  end

  def tax_bracket
    tax_bracket_array = []
    salary_range = ((self.salary-1001)..(self.salary+1001))
    @@all.each do |employee|
      if employee.salary.between?((self.salary-1001),(self.salary+1001))
        tax_bracket_array << employee.name
      end
    end
    tax_bracket_array
  end
end
