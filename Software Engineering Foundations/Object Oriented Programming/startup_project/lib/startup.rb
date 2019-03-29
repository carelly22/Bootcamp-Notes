require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries

        @employees = []
    end 

    def valid_title?(title)
        @salaries.include?(title)
    end

    def >(startup)
        self.funding > startup.funding
    end 

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else 
            raise "This is not a valid title!"
        end
    end 
    
    def size
        @employees.length
    end  

    def pay_employee(employee)
        # employee_1 = Employee.new("Carell", "CTO") 
        # this is the employee instance
        pay = @salaries[employee.title]
        if @funding > pay
            employee.pay(pay)
            @funding -= pay
        else
            raise "Not enough money to pay this employee!" 
        end

    end 

    def payday
        @employees.each { |employee| self.pay_employee(employee) }
    end 

    def average_salary
        sum = 0
        @employees.each do |employee|
            sum += @salaries[employee.title]
        end
        num_employees = @employees.length * 1.0
        return sum/num_employees 
    end
    
    def close 
        @employees = []
        @funding = 0
    end 

    def acquire(startup)
        # add the acquired startup's funding to our funding 
        @funding += startup.funding 
        
        # add the acquired startup's salaries to our salaries
        startup.salaries.each do |title, salary|
            if !(@salaries.has_key?(title))
                @salaries[title] = salary
            end 
        end
        
        # add the acquired startup's employees to our employees
        startup.employees.each { |employee| @employees << employee }
        
        # close the acquired startup
        startup.close(startup)
    end 
end