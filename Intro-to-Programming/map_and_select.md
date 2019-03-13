# Array-Giving Enumerables

## map

```ruby
arr = ["a", "b", "c", "d"]

new_arr = []
arr.each { |ele| new_arr << ele.upcase + "!"}
print new_arr # ["A!", "B!", "C!", "D!"]
puts

```

* There are many times when we iterate through an array, modify each element, and then put them into a new array.
* We want to optimize that pattern into a single method - what is a cleaner way to do this?

```ruby

arr = ["a", "b", "c", "d"]

new _arr = arr.map { |ele| ele.upcase + "!"}

print new_arr
puts

```

* `.map` is an enumerable, so it will need a code block
* we basically want to. design what our new element will look like in the code block   
* `.map` will take the expression we put in the block, the code block will evaluate to a new string, and then that will become a new element of the array 
* the above is much more compact than our earlier code
* `.map` returns a new array

## select

```ruby

nums = [1,2,3,4,5,6]

evens = []
nums.each do |num|
if num % 2 == 0
	evens << num
end
print evens
puts 
```

```ruby
nums = [1,2,3,4,5,6]
evens = nums.select { |ele| ele % 2 == 0 }
print evens
puts 
```
* for `.select` you will need to use a code block 
* if you're using `.select` it's important that your expression evaluates to a boolean
* `.select` evaluates to or returns an array
* this is much more compact than our earlier code
* whenever the expression in the code block evaluates to true, you "select" the element; when the code block evaluates to false, you don't

## Examples and Review

```ruby
# we want to capitalize the first letter of  every word of this array
arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

new_arr = arr.map { |word| word[0] + word[1..-1].downcase}
print new_arr
puts
```

```ruby
arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

new_arr = arr.map do |ele|
	first_char = ele[0].upcase
	rest = ele[1..-1].downcase
	first_char + rest
end
```

* when you have multiple lines of code and you are using `.map`, you need to write the line where you're specifying what the element will be *last*
* the last line is always taken as the element! 

```ruby
arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

new_arr = arr.map.with_index do |ele, idx|
	first_char = ele[0].upcase
	rest = ele[1..-1].downcase
	new_word = first_char + rest
	new_word * idx # this multiplies new_word by index ie. repeats new_word index times
end
```