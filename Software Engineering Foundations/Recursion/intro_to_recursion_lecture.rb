# Recursion occurs when a thing is defined in terms of itself or 
# its type 
# How is recursion going to work in ruby?
# We are going to start defining our programs in terms of themseles

# This is a broken, recursive method 

# def say_hello
#     p "hello"
#     say_hello
# end 

# say_hello

# this will result in a SystemStackError

# Note: Everytime we make a method call on our computer
# it will take some amount of memory (taking up a bit of the stack).
# The stack is memory on the computer for method calls 
# An infinite loop results in the stack running out of space 
# because the method is called infinitely 

# This also results in a stack error 
# def countdown(n)
#     p n 
#     countdown(n)
# end 

# this method decrements n, but still results in an infinite
# loop and a stack error 
# def countdown(n)
#     p n 
#     countdown(n - 1)
# end 

def countdown(n)
    # base case, stop the recursion
    # the most important aspect of the base case is that 
    # it does NOT call the recursion
    if n == 0
        p "Lift off!"
        return 

    end 

    # recursive, call the same method again
    p n 
    countdown(n - 1)
end 

# the reason we put a return
# if we enter the conditional, we want to exit the method call
# on that case 

# as we design our recursive code, our hope is that our recursive case will 
# eventually reach our base case 