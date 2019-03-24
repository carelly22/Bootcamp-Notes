# Agenda
# - why classes?
# - creating a class
# - instance variables / attributes
# - getters / setters 
# - methods 

# to create a class in ruby, just use the class keyword 
# then you need to give your class a name; the name should be the singular of the thing you are going to create
# the class name should be capitalized

# Defining a class 
class Cat
    def initialize(name, color, age)
        @name = name 
        @color = color
        @age = age
    end

    # getter method
    # def get_name this is a bit wordy, so just use def name 
    def name 
        @name
    end

    # setter method 
    def age=(new_age)
        @age = new_age
    end 

    def age 
        @age
    end 

    def color
        @color
    end 

    def meow_at(person)
        puts "#{@name} meows at #{person}"
    end 
end

# to call the method, you say the name of your class and then .new

# Initialize an instance of Cat
cat_1 = Cat.new("Sennacy", "brown", 4)
cat_1.age = 7 
cat_1.meow_at("Alvin")
# cat_1.age=(7) this is also valid for calling a setter method

p cat_1 # this prints out an object, or an instance of Cat
# it's just an id or a unique identifier of the cat 
p cat_1.name

# as we create our class, we will need to use the @ symbol
# the @ symbol represents an instance variable or an attribute of our class
# the initialize methods returns a new object, in this case a new cat 

cat_2 = Cat.new("Whiskers", "white", 4)
cat_2.meow_at("Tommy")
p cat_2
p cat_2.name

# after we have defined our Cat class, we can keep calling initialize to keep creating cats

# what if we wanted a way to get our cat's name or color? 
# use a getter method
# we can call the same method and get different names because we are calling them on different objects
# the Cat class is basically a blueprint for our cats 

# As per ruby convention, getter methods are usually the same name as the attribute they are returning 

# what about if we wanted to change the attribute of a cat? 
# if we just do cat_1.age = 7 we will get a NoMethodError

# we must use a setter method in order to "set" new values for attributes
# you can omit the parentheses for a method call; we usually keep them for clarity
