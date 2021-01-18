class Employee
    @@all = []
    attr_reader :name, :manager_name
    attr_accessor :salary
    def initialize(name, salary, manager_name)
        @name = name
        @manager_name = manager_name
        save
        @salary = salary
    end
    def save
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def self.paid_over(num)
        Employee.all.select {|element| element.salary > num}
    end
    def self.find_by_department(dept)
        Employee.all.each do |element| 
            if element.manager_name.department == dept
                return element.name
            end
        end
    end
    def tax_bracket

        Employee.all.select do |element| 
            if element != self
                element.salary.between?((self.salary - 1000), (self.salary + 1000))
            end
        end
    end

    


end
