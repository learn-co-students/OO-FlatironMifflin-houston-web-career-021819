class Employee
    attr_accessor :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary)
        self.name = name
        self.salary = salary
        @@all << self
    end

    def self.paid_over(salary)
        all.select do |employee|
            employee.salary > salary
        end
    end

    def manager_department
        Manager.all.each do |manager|
            if manager.name == self.manager_name
                return manager.department
            end
        end
    end

    def self.find_by_department(department)
        all.find do |employee|
            employee.manager_department == department
        end
    end

    def tax_bracket
        bracketed_employees = []
        Employee.all.each do |employee|
            if employee.salary < self.salary + 1000 && employee.salary > self.salary - 1000
                bracketed_employees << employee
            end
        end
        return bracketed_employees
    end

    def self.all
        @@all
    end
end
