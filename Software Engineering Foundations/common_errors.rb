# Syntax Error

# a syntax error is more or less a typo; means that you are not using
# correct ruby language 

def check_num(num)
    if num > 0
        p "positive"
    else if num < 0
        p "negative"
    else 
        p "zero"
    end
end

check_num(42)

# most of the times, for syntax error your error will not appear at the 
# correct line
# syntax errors throw off the flow of the program in ruby

# it is easier to debug when you know the type of error you are looking
# for 

# More examples of syntax errors
# incomplete variable assignment
# grammatical mistakes 

# NameError 

# when you reference a variable name or method name that does not exist

p my_name # this will give you a NameError because you are referencing an undefined variable
# this error also occurs commonly when you misspell a variable that you are trying to reference 

# NoMethodError

# similar to a NameError
# a special instance of NameError
# happens when you incorrectly reference a method 

say_hello("alvin") # NoMethodError
# this error happens because the method does not exist

my_val = nil
my_val.upcase # NoMethodError

# suppose you had a variable with the value nil
# when you do an operation on the variable, you will get a NoMethodError
# for this as well; this happens because you cannot do operations on nil

# ArgumentError

def say_hello(first_name, last_name)
    p "hi " + first_name + " " + last_name 
end

# passing in incorrect data into our method results in an ArgumentError
# eg. your method expected 2 arguments and only got 1
# the nature of an ArgumentError is that you've either passed in too 
# many arguments or too few 
# your method definition should completely align with how you are 
# calling the method 

# TypeError

5 + "dog"

# you're using an operation with incompatible data types
# eg. if you try to add a number and a string 
# usually pretty easy to debug 
# just make sure the operation is legal

# how to debug common errors 
# start by looking at the error type and then at the line number 
# sometimes you'll need to look at where those variables and expressions
# come from