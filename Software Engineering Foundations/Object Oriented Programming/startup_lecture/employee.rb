class Employee
    # automatically create getter methods for name and title
    attr_reader :name, :title
    # initialize our instance variables
   
    def initialize(name, title)
        @name = name
        @title = title 
        @earnings = 0        
    end

    def pay(amount)
        @earnings += amount
    end 
    
end