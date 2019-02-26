class Manager
  @@all = []
  @@all_departments = []
  @@all_ages = []
  attr_accessor :name, :department, :age, :employees

  def initialize(name:, department:, age:, employees:)
    self.name = name
    self.department = department
    self.age = age
    self.employees = employees
    @@all_departments << department
    @@all_ages << age
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_departments
    @@all_departments
  end

  def self.all_ages
    @@all_ages
  end

  def hire_employee(name, salary)
    self.employees << name
  end

  def self.average_age
    self.all_ages.inject{ |sum, el| sum + el }.to_f / self.all_ages.size
  end

end
