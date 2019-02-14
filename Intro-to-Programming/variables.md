# Variables

## What is a variable?
* A variable is a container to remember or store data

## Create a variable
* Just state the name of the variable, and assign a value to it
* eg. `my_num = 42` or `location = "SF"`

## Modifying a variable

* In order to modify a variable, you have to reassign it
```ruby
my_num = 42 # creates and assigns a value to my_num
my_num = my_num + 8 # reassigns my_num
puts my_num # prints out 50
```

# Shorthand operations
```ruby
# count += 1 # same as 'count = count + 1'
# count -= 1 # same as 'count = count - 1'
# count /= 1 # same as 'count = count / 1'
# count *= 1 # same as 'count = count * 1'
```

* eg. checking if a number is even
```ruby
num = 12
is_even = 12 % 2 == 0 # evaluates to true
puts is_even # prints true
```