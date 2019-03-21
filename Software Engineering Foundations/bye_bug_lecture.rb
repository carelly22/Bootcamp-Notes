require "byebug"

# def avg(a, b)
#     sum = a + b
#     sum / 2.0
# end

# debugger 
# first_result = avg(15, 20)
# second_result = first_result + 0.5

# p second_result

def is_prime?(number)
    (2...number).each do |factor|
        return false if number % factor == 0
    end
    
    true
end

def first_n_primes(num_primes)
    primes = []
    num = 2
 
    while primes.length < num_primes
        primes << num if is_prime?(num)
        num += 1
    end

    primes
end

debugger
p first_n_primes(5) # => [2, 3, 5, 7, 11]

# require is a built in method in ruby
# it can import gems into our files and import other files 

# once you have done used require, you just need to choose a spot in your 
# code where you want to start debugging 
# you just insert debugger at whatever point you want to start debugging 

# ruby will pause execution at the line right after debugger 
# once you run next, you go to execute the next line 
# something that we will do in any byebug session is take a look at our
# key variables 
# after that keep running next 
# then check another variable 

# if you want to resume regular ruby execution in your code
# you can type continue, and then you will execute the rest of your 
# program

# if you're paused on a line that contains a method call
# you can use another command called step which will step into that 
# method call 

# within the method, you can hit next commands 
# when you hit next, it always goes to the next line of executed 
# code
# you can step out of methods this way 

# a shorcut for step is s 
# note that step works when you are ON the line for a method call

# what about if you want to jump to a line of code at a point later in 
# your program's execution?
# use a combination of break and continue

# to add another breakpoint in your code, use break
# eg. if you want to jump to line 12, write "break 12"
# byebug let's you know that you've created a breakpoint at the line number
# now if you use continue, the program will resume normal execution
# until it hits that breakpoint 

# for first_n_primes bug
# the bug that we have results in an infinite loop
# how do we correct this?
# which loop is broken?

# l is short for list
# you can use l to specify a range of code to step through

# for blocks of code, you will need to use the step command 
# we should not include the number in is_prime?; should exclude it 
# this is why we have an infinite loop

# how else can we use byebug to verify that our code is running properly?
# use debugger in another place 
