class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name,department,age)
        self.name = name
        self.department = department
        self.age = age
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

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary)
        new_employee.manager_name = self.name
        return new_employee
    end

    def self.all_departments
        all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        ages = []
        all.each do |manager|
            ages << manager.age
        end
        return ages.inject{ |sum, el| sum + el }.to_f / ages.size
    end
        


end
