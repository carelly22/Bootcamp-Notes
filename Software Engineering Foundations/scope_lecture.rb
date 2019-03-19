food = "pizza" # this is an example of a scope
p food 

# you can have a scope whenever you define a function

def say_hello # this say_hello method has its own scope
    message = "hi"
    p message
end

say_hello

# but what about if you move the variable outside of the method?

message = "hi" # this is the outermost scope

def say_hello # inner scope in the say_hello method
    p message
end 

# you will not be able to print out the message; will get a reference error

# this is also true in the opposite direction

def say_hello
    message = "hi"
end 

say_hello
p message # you will also get an error here because the message 
# variable has not been defined in this scope

# but what about if you wanted to have a scenario where you wanted 
# to access a variable across different scopes?

# will need to use the global scope

$message = "hi" # the $ makes the variable a gloabl variable
# in general, using a global variable is not a best practice 
# you want to create methods that can stand alone
# you don't want a lot of methods to access and manipulate a 
# variable over time because it would be hard to track the changes 
# over time 

def say_hello
    p message
end

say_hello

def say_hello
    $message = "hi"
end

say_hello

p message

# you can also create a global variable by creating a constant
# to create a constant in Ruby, just start by naming your variable
# with a capital letter
# usually we name constants in all uppercase letters eg. FOOD
# what's special about a constant is that it cannot be reassigned 

FOOD = "pizza"
p FOOD

# after you initialize the constant, you cannot reassign it 
# however, you can mutate it 

FOOD = "pasta" # this will give you an error or a warning
p FOOD

FOOD.upcase! # this will not give you a warning
p FOOD

FOOD[0] = "P"
p FOOD

# a constant is accessible in the global scope

FOOD = "pizza"

def my_method
    p FOOD # you can reference the constant variable in this method
end # you will get warned if someone tries to reassign the variable 

# What are some structures that don't give us their own scope?

message = "bye"

3.times do
    p message 
end 
# a block does not have its own scope, so you can reference the 
# variable above

# if statements and while looops also do not have their own scope

# rules for scope
# notice your methods and global scopes (constants, and dollar sign variables)