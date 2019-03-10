# Counter Hashes

## default value nil

```ruby
my_hash = {
	"a" => 28
}

puts my_hash["a"] # 28
```

* What will happen if we try to access a key that does not exist?

```ruby
my_hash = {
	"a" => 28
}

puts my_hash["b"] # this will not return anything but the actual value of "b" is nil
puts my_hash["b"] == nil # true
```
* nil is a special value in Ruby which represents nothingness or emptiness
* It will pop up as the default value of many things 

## Hash.new(default)

* What about if you wanted your hash to have a different default value instead of nil? - then you would initialize it in a different way

```ruby
my_hash = Hash.new(0)

puts my_hash # {}
puts my_hash["c"] # 0
```

* If you try to access any of the keys in the above hash, you will get zero
* The choice of the default value is arbitrary

## counter hash strategy

```ruby
# suppose we want a hash where every key is a unique letter and each corresponding value is the number of times it appears in the string

counter = Hash.new(0)

str = "bootcamp prep"
str.each_char { |char| counter[char] += 1}
puts counter # => {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}
```

```ruby

counter = Hash.new(0)

str ="bootcamp prep"
str.each_char do |char|
	puts char
	counter[char]+=1
	puts counter
end

# returns the following; by then end you have a complete count of every character
# b
# {"b"=>1}
# o
# {"b"=>1, "o"=>1}
# o
# {"b"=>1, "o"=>2}
# t
# {"b"=>1, "o"=>2, "t"=>1}
# c
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1}
# a
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1}
# m
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1}
#
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>1, " "=>1}
# p 
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1}
# r
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1}
# e
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>2, " "=>1, "r"=>1, "e"=>1}
# p
# {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}
```

```ruby
my_hash = {
	"a" => 42,
	"b" => 10
}

key = "b"
puts my_hash["b"] # 10
puts my_hash[key] # 10
```
* You can put any expression you want in the `[]`, it just has to evaluate to the key you're looking for 

```ruby
# we want to take in the string, and get a hash where every key is a unique character of the string and the corresponding value is the number of times that chracter appears

str = "mississipi river"
count = Hash.new(0)
puts count # {}
puts count["m"] # 0

str.each_char { |char| count[char] += 1} # this increases the count of the character every single time
```

* What if you want to order the hash by the most frequent character?

```ruby
str = "mississipi river"
count = Hash.new(0)
puts count # {}
puts count["m"] # 0

str.each_char { |char| count[char] += 1} # this increases the count of the character every single time
print count 
puts
print count.sort_by { |k, v| v} # [["e", 1], [" ", 1], ["v", 1], ["m", 1], ["r", 1], ["p", 2], ["s", 4], ["i", 5]]
# the data above is sorted by increasing values
sorted = count.sort_by { |k, v| v}
print sorted[-1] # this will give you the entire last subarray ["i", 5]
print sorted[-1][0] # prints out i
print count.sort_by { |k, v| k} # since the keys are characters, Ruby will sort the keys by alphabetical order
```



