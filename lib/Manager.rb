class Manager
    attr_accessor :name, :age, :department, :employees

    @@all = []
    
    def initialize(name, department, age=0, employees=[])
        self.name = name
        self.department = department
        self.age = age
        self.employees = employees
        @@all << self
    end

    # def name
    #     @name
    # end

    # def department
    #     @department
    # end

    # def age
    #     @age
    # end

    def employees
        @employees.map do |employee|
            employee
        end
    end

    def self.all
        @@all
    end
    
    def hire_employee(employee_name, employee_salary)
        new_employee = Employee.new(employee_name, employee_salary)
        @employees << self.employee_name
        employee_name.manager = self
    end

    def self.all_departments
        @@all.map do |manager|
            manager.department
        end
    end

    def self.average_age 
        total = 0
        average = 0.00
        @@all.each do |manager|
            total += manager.age
        end
        average = (total.to_f/@@all.length)

    end 
    

end
