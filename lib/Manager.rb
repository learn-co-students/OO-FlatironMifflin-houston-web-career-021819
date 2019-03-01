class Manager
   attr_accessor :name, :age, :department

   @@all = []

   def initialize(name, age, department)
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
            employee.manager == self
        end
    end

    def hire_employee(name, salary)
        self.employees << Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        total = 0
        @@all.map {|manager| total += manager.age}
        (total / @@all.length).to_f
    end
end
