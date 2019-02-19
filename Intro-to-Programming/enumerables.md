# Enumerables 

* This group of methods gives us a clear way to iterate through our code

## array.each

* This method is interesting in that it takes in a block of code; but how do you represent a block of code in Ruby? One way is to use curly braces `{}`

```ruby
months = ["Jan", "Feb", "Mar", "Apr"]

months.each{ |month| puts month} # this single line replaces the entire while loop
# this will print out 
# Jan 
# Feb
# Mar
# Apr 
```

* The above .each code automatically iterates through every element of the array. In the block of code we're specifying a parameter, `month`, which behaves like a variable - on every iteration it's going to change from one element of the array to the next. Note that the choice of the parameter for the block of code is arbitrary, but do try to name it something meaningful.

* Use case: This way is useful if you just want to run only a single of code in your block.

```ruby
months = ["Jan", "Feb", "Mar", "Apr"]

months.each do |ele|
	puts ele 
	puts "----"
end
# this will print out 
# Jan 
# ----
# Feb
# ----
# Mar
# ----
# Apr 
```

* Use case: This way is useful if you just want to run multiple lines of code in your block.

## array.each_with_index

```ruby
months = ["Jan", "Feb", "Mar", "Apr"]
months.each_with_index do |ele, idx| 
	puts ele 
	puts idx
	puts "----"
end 
# this will print out the element followed by its corresponding index
# Jan 
# 0
# ----
# Feb
# 1
# ----
# Mar
# 2
# ----
# Apr
# 4 
```

## string.each_char

```ruby
sentence = "hello world"
sentence.each_char do |char| # will print out one by one each character of our sentence string
	puts char
end
```
## string.each_char.with_index

```ruby 
sentence = "hello world"
sentence.each_char.with_index do |char, idx| # will print out one by one each character of our sentence string, followed by its index, then a ---- 
	puts char
	puts idx
	puts ----
end
```

## Ranges in Ruby

```ruby
arr = ["a", "b", "c"]
arr.each {|ele| puts ele} # prints out on a new line every element of the array
```

```ruby
# what do you do if you want to iterate through 1-100 for instance?
[1,2,3,4,5].each {|num| puts num} # this works, but is not elegant or dynamic
(1..10).each {|num| puts num} # we're applying the .each method to the range; it will hit every number in the range and pass that into the block of code 
```

## (start..end).each

* (start..end).each - iterate from start to end (inclusive)

```ruby
(5..10).each{|num| puts num}
```

## (start...end).each

* (start...end).each - iterate from start to end (excluding end)

```ruby
(5...10).each{|num| puts num}
```

* Let's try to solve the fizzbuzz problem using these new methods ie. write a method fizzbuzz that takes in a number max and returns an array containing all numbers less than max that are divisible by 3 or 5, but not both

```ruby
def fizzBuzz(max)
	arr =[]
	(1..max).each do |num|
		if (num % 3 == 0 && num % 5 != 0) || (num % 3 != 0 && num % 5 == 0)
			arr << num
	end
	return arr
end
```

## Iterating code a number of times 

```ruby
(0...4).each {puts "hello"} # you can use the .each method
```

```ruby
4.times {puts "hello"} # num.times is much cleaner; you can also do a do block
```