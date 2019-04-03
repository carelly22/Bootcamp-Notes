# Ruby Truthy vs Falsey Values
# 
# Falsey: false, nil
# Truthy: everything else! 

# if nil # interpreting this as a boolean value, nil will act as false 
#     p "it is truthy!"
# else
#     p "it is falsey!"
# end

# the above code will print out "it is falsey!"

# How can we use truthy and falsey to our advantage?

# a || b :
# when the a is truthy, return a 
# when a is falsey, return b 

true || 42          # => true
42 || true          # => 42
false || 42         # => 42
42 || false         # => 42
false || "hello"    # => "hello"
nil || "hello"      # => "hello"
"hi" || "hello"     # => "hi"
0 || true           # => 0
false || nil        # => nil

# if you have two truthy values, we choose the first truthy values 

p nil || false # this will print out false 
# this behaviour is good when you want to establish a default value in your code 

def greet(person = nil)
    if person.nil? # if person == nil, reassign person to "you"
        person = "you"
    end

    p "Hey " + person 
end

greet("Brian")  # => "Hey Brian"
greet           # => "Hey you"

# We can refactor this if statement to utilise the || pattern and the falsey
# nature of nil

def greet(person = nil)
    person = person || "you"

    p "Hey " + person
end 

greet # => "Hey you"
greet("Jeff") # => "Hey Jeff"
greet("Brian") # => "Hey Brian"

# We can refactor even more and do the following :

def greet(person = nil)
    person ||= "you" # person = person || "you"
    # similar to the shorthand a+=b which is equal to a = a + b

    p "Hey " + person
end 

def call_that_proc(val, &prc)
    prc ||= Proc.new { |data| data * 2 }
    # p prc # this prints out the visul representation of the proc we created 
    p prc.call(val)
end 

call_that_proc("alvin") { |data| data.upcase + "!!!!"}
call_that_proc("simche") # what is we forgot to pass in a proc? in this situation, the proc will be assigned nil
# what if we wanted to catch this mistake and use a default proc for this situation

# using the lazy initialization for attributes in classes 
# what if we had a menu with 100000 items? 
# creating this menu would take quite a bit of time to create and it would take 
# up a decent amount of memory as well 
# right now since we create the @menu attribute in our initialize method for Restaurant
# we will have to pay for that cost; our initialize method will be very slow 

# Lazy initialization means that we're only going to create and assign an attribute 
# when we need it 

# class Restaurant
#     attr_accessor :name, :chefs, :menu

#     def initialize(name, chefs)
#         @name = name
#         @chefs = chefs
#         @menu = ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
#     end
# end

# five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])
# p five_star_restaurant

class Restaurant
    attr_accessor :name, :chefs, :menu

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
    end

    # def menu
    #     @menu # this would return nil since we have not initialized the @menu attribute
    # end 

    def menu
        @menu || = ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
    end
end

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])
p five_star_restaurant
p five_star_restaurant.menu
p five_star_restaurant # now the menu attribute is present in the Restaurant class 
p five_star_restaurant.menu << ["pizza"]

# you only use resources or perform a costly operation when it is totally necessary
# there's no point of us creating a giant array until someone asks for it 
# so we can assign it within the getter method 
# the attribute will not get reassigned since arrays are truthy values, so the ||= getter 
# method will evaluate to the array (truthy value on the right), and not the default nil 
# value in the ||= getter method 