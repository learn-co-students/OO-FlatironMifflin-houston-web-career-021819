class Employee
    attr_accessor :name, :salary, :manager, :department
    @@all = []
    def initialize(name, salary=0, department)
        self.name = name
        self.salary = salary
        self.manager = manager
        self.department = department
        
        @@all << self
    end

    def self.all
        @@all
    end
    
    def manager
        @manager
     end

    def department
        @department = department
    end

    def self.paid_over(amount)
        over_paid_employees = []
        @@all.select do |employee|
            if employee.salary > amount
                over_paid_employees << employee.name 
            end
        end
        over_paid_employees
    end

    def self.find_by_department(dept)
        manager_of_that_dept = " "
        first_employee = " "
        Manager.all.each do |manager|
            if manager.department == dept
                manager_of_that_dept = manager
            end
            first_employee = manager_of_that_dept.employees.first
        end
        
    end

    def tax_bracket
        result = []
        @@all.select do |employee|
            if (employee.salary==self.salary+1000)||(employee.salary==self.salary-1000)
                result << employee.name 
            end
        end
     result
    end
end
