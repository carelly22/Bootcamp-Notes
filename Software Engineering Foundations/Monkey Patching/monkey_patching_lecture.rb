# Monkey Patching - Adding additional methods to an existing class

# Ruby Types are really classes: Integer, String, Array, Hash, etc..

# What if we wanted to implement our own string method?
# let's create a method that returns true if a string is uppercase

# results of calling string.upcase?
"hello".upcase? # false
"HELLO".upcase? # true

class String
    def upcase?
        # p self # this returns the string 
        # self in the context refers to the string
        self.upcase == self # evaluates to true if string is uppercase; false otherwise
    end
end

# we want to check if the string in question, or String's instance, is uppercase
# if you are within the upcase method, how can you call the instance?
# if you want to refer to an instance itself, use the self keyword

# adding functionality to existing classes is just like creating a new method

# Integer class only refers to +ve, -ve numbers and 0
class Integer
    def prime?
        return false if self < 2

        (2...self).each do |factor|
            if self % factor == 0
                return false
            end
        end
        
        return true # returns true only after you check every factor 
    end
end 

# results of calling num.prime?
7.prime? # true
11.prime? # true 
12.prime? # false

# we want to write a method to check if an array contains at least one zero inside
class Array
    def has-zero?
        self.include?(0)
    end
end 

[4,2,3,0, "hello"].has_zero? # true
[4,2,3, "hello"].has_zero? # false

# for all of your existing data types/ classes in ruby, you can always expand them by monkey-patching them