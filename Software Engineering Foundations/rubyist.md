# Becoming a Rubyist with Style

## Implicit Returns 

* Methods in Ruby will automatically return the evaluation of their last executed expression
* You will still need to use the explicit `return` keyword to do an early return

```ruby
# Less preferred
def get_avg(num_1, num_2)
	return (num_1 + num_2) / 2
end

# Preferred by a Rubyist
def get_avg(num_1, num_2)
	(num_1 + num_2) / 2
end
```

## Omitting parentheses for method calls with no arguments

* When calling a method without passing any arguments, we'll often drop the parentheses altogether

```ruby
def say_hi
	puts "hi"
end

# Less preferred 
say_hi()

# Preferred by a Rubyist
say_hi
```

## Use single line conditionals when possible

* When we have a single line in the body of a simple if statement (that is not attached to an elsif or else), we can turn it into a one-liner

```ruby
raining = true

# Less preferred
if raining
    puts "don't forget an umbrella!"
end

# Preferred by a Rubyist
puts "don't forget an umbrella!" if raining
```

## Use built-in methods

* There are many methods in Ruby that can make your life easier. Use them!

```ruby
# eg.1
num = 6

# Less preferred
p num % 2 == 0

# Preferred by a Rubyist
p num.even?

# eg.2
people = ["Joey", "Bex", "Andrew"]

# Less preferred
p people[people.length - 1]

# Preferred by a Rubyist
p people[-1]
p people.last
```

## Use enumerables to iterate 

* There are many enumerables in Ruby that have specific use cases. These tools can really make the code read like english. 
* Often times, you can avoid using a while loop in favor of a more readable enumerable.

```ruby
# Less preferred
def repeat_hi(num)
    i = 0
    while i < num
        puts "hi"
        i += 1
    end
end

# Preferred by a Rubyist
def repeat_hi(num)
    num.times { puts "hi" }
end
```

* Note: Given a problem, not all enumerables are equal. Some methods will immediately solve the problem at hand elegantly.

```ruby
# Less preferred
def all_numbers_even?(nums)
    nums.each do |num|
        return false if num % 2 != 0
    end

    true
end

# Preferred by a Rubyist
def all_numbers_even?(nums)
    nums.all? { |num| num.even? }
end
```














