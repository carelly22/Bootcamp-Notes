# Nested Loops

## Refreshers

```ruby
(1..3).each do |num|
	puts num
end
```

```ruby
(1..3).each do |num1|
	puts num
	(1..5)..each do |num2|
		puts "       " + num2.to_s
	end
end
```
* Note: `.to_s` turns a number into a string; for the above, you need to use this method since you can't add a string to a number in Ruby

```ruby
(1..3).each do |num1|
	(1..5)..each do |num2|
		puts num1.to_s + " " + num2.to_s 
	end
end
# this will output:
# 1 1
# 1 2 
# 1 3 
# 1 4 
# 1 5 
# 2 1 ... and so on
# each line represents a single iteration of the loop - the outer loop is iterating 3 times, but the inner loop is iterating 5 times, so we have a total of 15 iterations
```

```ruby
arr = ["a", "b", "c", "d", "e"]

arr.each do |ele1|
	arr.each do |ele2|
		puts ele1 + ele2 # string concatenation, looking at a pair of elements
	end
end
```

* On the very first iteration, `ele1` will be a, then the code will compare a to the entire array, so from a-d
* Each line represents a pair of elements from the array; the code prints out all possible pairs from the given array
* Note: with this you will have duplicate pairs
* What if you want to only get the unique pairs?

```ruby
arr = ["a", "b", "c", "d", "e"]

arr.each_with_index do |ele1, idx1|
	arr.each_with_index do |ele2, idx2|
		if idx2 > idx1
			puts ele1 + ele2
		end
	end
end
# this will print out
# ab
# ac
# ad
# bc
# bd
# cd
```

```ruby
arr = ["a", "b", "c", "d", "e"]

arr.each_with_index do |ele1, idx1|
	arr.each_with_index do |ele2, idx2|
		if idx2 > idx1
			puts ele1 + ele2
			puts idx1.to_s + " " + idx2.to_s
			puts "------"
		end
	end
end
# if idx2 is greater than idx1, then idx2 is never referring to what idx1 referred to previously
# this will print out
# ab
# 0 1
# "------"
# ac
# 0 2
#"------"
# ad
# 0 3
# "------"
# bc
# 1 2 
"------"
# bd
# 1 3 
"------"
# cd
# 2 3
```

* When you get an element from your array, refer to it as a sub array - then, you can call each element of the sub array