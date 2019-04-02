# Write a method `factorial(n)` which takes a number and returns the factorial of n.
# A factorial is the product of all whole numbers between 1 and n, inclusive.
# For example, `factorial(5)` is 5 * 4 * 3 * 2 * 1 = 120.

# the gist of recursion is that you're taking a large problem
# and making it smaller and smaller until you get to the base case

# fact(4) = 4 * 3 * 2 * 1 = 4 * fact(3)
# fact(3) = 3 * 2 * 1 = 3 * fact(2)
# fact(2) = 2 * 1 = 2 * fact(1)
# fact(1) = 1

# then: fact(n) = n * fact(n-1)
# base case: fact(1) = 1

def factorial(n)
    return 1 if n == 1

    n * factorial(n-1)
end 

p factorial(5) # 120
p factorial(7) # 5040

# How does this factorial method work under the hood?

# Two method rules that are not specific to recursive methods 
# 1. Whenever I call a method, I should pause execution and execute that 
# method right now
# 2. Whenever I return for a method, I return back to where I orignally called it 
# and bring that value with me 

# fact(4) = 4 * fact(3) => fact(3) = 3 * fact(2) => fact(2) = 2 * fact(1) => fact(1) = 1