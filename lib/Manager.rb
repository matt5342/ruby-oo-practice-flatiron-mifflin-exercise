class Manager
    @@all = []
    attr_accessor :department
    attr_reader :name, :age
    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        save
    end
    def employees
        Employee.all.select{|element| element.manager_name == self}
    end
    def hire_employee(name, salary)
        # binding.pry
        Employee.new(name, salary, self)
    end
    def self.all_departments
        departments = []
        Manager.all.each do |element| 
            binding.pry
            departments.push(element.department)
        end
        departments
    end
    def self.average_age
        age_total = 0
        
        Manager.all.each do |element| 
            # binding.pry
            age_total += element.age
        end
        average = age_total.to_f / Manager.all.length
    end
    def save
        @@all.push(self)
    end
    def self.all
        @@all
    end
end
