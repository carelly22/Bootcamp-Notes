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