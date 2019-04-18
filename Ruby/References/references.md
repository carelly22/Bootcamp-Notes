# References and Memory

Understanding what's going on under the hood in Ruby when we use our programs will help us know that our programs are doing the things that we want them to do.

```ruby
x = 4 
# casual speak, we might say we're setting x to equal 4 
# = is the assignment operator 
# it creates a reference/pointer to 4 and then gives x that reference 
# one nice way to represent memory is a strip with a bunch of chunks 

# we are assigning x a pointer that points to a place in memory that contains 4

x = 5

# we would still have x but would find the place where 5 lives, and change the pointer
# to point to 5

y = x
x = 10
p y # what would y be? # y is actually still 4

# everytime you see the assignment operator, you are creating a new pointer
# x points to a new bucket which contains 10
# but y has the same pointer which goes to 4

x = 4
y = x
x += 2
y = #?

# when we say x += 2 we mean x = x + 2
# x points to 6 now
# but y stays at 4 
# there is nothing we can do to x to make y not be 4 
# this is because the numbers in Ruby are immutable objects (cannot be mutated)
# Mutable - can be mutated
```

What kinds of thing in Ruby are immutable? - numbers
What are things that are mutable? - strings and other things you might create etc.

```ruby
x = "Donatello"
y = x
x << "the TMNT"

# we have stored "Donatello" at a space in memory
# y is pointing to the same space
# the shovel operator mutates the information in memory
# so when x changes, y will also change
```

```ruby
x = "Donatello"
y = x
x += "the TMNT" # x = x + "the TMNT"

puts y # what is y?

# the assignment operator creates a new space in memory!!
# so y will stay the same as the original value of x 
```

```ruby
x = []
y = x
x << "hello"

puts y

# we created a place in memory that points to the empty array
# x points to that space 
# y also points to the same bucket 
# when we shovel into the array, we are putting that element into the array
# so y will be ["hello"]
# similary, if you use +=, y will be [], not ["hello"]
```

But what happens with 2D arrays?

```ruby
x = Array.new(3, [])
x[0] << "Hello"

# this will actually add "Hello" to each element of the array
# since initially, Ruby creates an Array with three of the same subarrays
# so indices 0,1,2 all point to the same subarray

puts x # [["Hello"],["Hello"],["Hello"]]
```

We need to do something different when creating 2D arrays, illustrated below:

```ruby
x = Array.new(3) { [] } # we NEED to pass in a block with what we want each element to be
# it evaluates this block each time it creates the default element for the top level array
# so we will have three different arrays in memory
x[0] << "Hello"

puts x # [["Hello"], [],[]]
```

Important concept for creating multi-dimensional arrays. Important for making board games or some kind of game that has the concept of a grid (otherwise you would be changing every element of your grid every time you wanted to change one thing).