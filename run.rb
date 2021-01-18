require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager_1 = Manager.new("Bob", 27, "Meat")
manager_2 = Manager.new("Jim", 48, "Produce")
manager_3 = Manager.new("Billbob", 45, "Meat")
emp_1 = Employee.new("Bill", 2000, manager_1)
emp_2 = Employee.new("Jimbob", 4000, manager_2)
emp_3 = Employee.new("Billyy", 4500, manager_1)

manager_1.hire_employee("Noob", 8000)
binding.pry
puts "done"
