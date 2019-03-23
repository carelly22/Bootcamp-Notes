# How can we use blocks in our own methods

array = [1,2,3]

print array.map { |num| num * 2 } # every element of the array is multipled by 2

# How can I take a block of code and manipulate it in the space of my program?

# you cannot save a block into a variable and move it around
# this is incorrect syntax
# my_block = { |num| num * 2} # will give an error 

# a block is some code 
# a proc is a wrapper around your block

my_proc = Proc.new { |num| num * 2}
# when you call Proc.new you give it the block of code that you want it to 
# encapsulate 

print my_proc # this is just the visual representation of a bloc
# how can you execute the block of code in the proc? 
# use proc.call
# also need to specify any parameters that the block might require

print my_proc.call(3) # => 6

my_proc = Proc.new { |a, b| a + b}
print my_proc.call(3,2) # => 5

# our proc is reusable 

# very common convention to name your procs prc in ruby
def add_and_proc(num_1, num_2, prc)
    sum = num_1 + num_2
    prc.call(sum)
end 

doubler = Proc.new { |n| 2 * n }

print add_and_proc(2, 3, doubler) 
# this method returns what the proc returns
# => 10 because 2+3=5 and 5*2=10

negate = Proc.new { |n| -1 * n }

print add_and_proc(6, 3, negate) # => -9

# our add_and_proc method can have different results depending on the 
# proc that we give it 

# this is a bit clunky though, since every time we want to use a 
# different proc we have to call Proc.new

# wouldn't it be great for the proc to be automatically converted 
# from a block?
# let's refactor our code to try some ruby shortcuts

def add_and_proc(num_1, num_2, &prc)
    sum = num_1 + num_2
    prc.call(sum)
end 

print add_and_proc(2, 3) { |n| 2 * n }

# the & converts your block into a proc
# now you MUST give your method a block and not a proc
# the & needs something to convert into a proc
# if you use another & on the opposite side, you can pass in a proc 

def add_and_proc(num_1, num_2, &prc)
    sum = num_1 + num_2
    prc.call(sum)
end 

negate = Proc.new { |n| -1 * n }

print add_and_proc(2, 3, &negate)

# & automatically converts a block into a proc object 
# when you use & on arguments, the & converts the proc into a block

[1,2,3].map { |num| num * 2 }

# let's build a method that has the same behaviour as .map

# &prc this requires a block of code which will be converted into a proc

def my_map(arr, &prc)
    new_arr = []
    
    arr.each { |ele| new_arr << prc.call(ele) }

    new_arr
end

# set up an empty arr
# iterate through the elements of the array
# call the proc, evaluating the block of code
# shoveling the result into the new array 

print my_map([1,2,3]) { |num| num * 2 } # => [2,4,6]