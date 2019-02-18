# Array Methods

## <<

* << adds an element to the end of an array, evaluates to the array

```ruby
arr = ["vanessa", "candace", "dave"]
puts
print arr << "jia" # evaluates to ["vanessa", "candace", "dave", "jia"]
puts
```

## array.push

* array.push add an element(s) to the end of the array, evaluates to the array

```ruby
arr = ["vanessa", "candace", "dave"]
puts
print arr.push("jia") # evaluates to ["vanessa", "candace", "dave", "jia"]
puts
```

## array.pop 

* array.pop removes the last element of an array, evaluates to the element that was removed

```ruby
arr = ["vanessa", "candace", "dave"]
puts
print arr.pop() # evaluates to dave # can also just say arr.pop, don't need to use the parentheses
puts
print arr # evaluates to ["vanessa", "candace"] 
puts
```

## array.unshift

* array.unshift adds an element to the front of an array, evaluates to the array

```ruby
arr = ["vanessa", "candace", "dave"]
puts
print arr.unshift("jia") # evaluates to ["jia", vanessa", "candace", "dave"]
puts
print arr # evaluates to ["jia", vanessa", "candace", "dave"]
puts
```

## array.shift

* array.shift removes the first element of an array, evaluates to the element that was removed

```ruby
arr = ["vanessa", "candace", "dave"]
puts
print arr.shift # evaluates to vanessa
puts
print arr # evaluates to ["candace", "dave"]
puts
```

## array/string.index(ele)

* array/string.index(ele) - evaluates to the index where ele is found

```ruby
arr = ["SF", "NY", "LA"]
puts arr.index("NY") # evaluates to 1
puts arr.index("NJ") # while not evaluate to anything since NJ is not in arr
```

```ruby
string = "hello"
puts string.index("e") # evaluates to 1 since that is the index "e" is at in "hello"
puts string.index("ello") # evaluates to 1 since that is the index the substring starts at
puts string.index("elloz") # evaluates to nothing since "elloz" is not in "hello"
```

## array/string.include?(ele) 

* array/string.include?(ele) - evaluates to a boolean indicating if ele is found

```ruby
arr = ["SF", "NY", "LA"]
puts arr.include?("SF") # evaluates to true
puts arr.include?("NJ") # evaluates to false
```

```ruby
string = "hello"
puts string.include?("e") # evaluates to true
puts string.include?("E") # evaluates to false
```

## array/string.reverse

* array/string.reverse - evaluates to a new version of the array or string

```ruby
arr = [1, 2, 3, 4]
print arr # evaluates to [1, 2, 3, 4]
puts
print arr.reverse # evaluates to [4, 3, 2, 1]
print arr # evaluates to [1, 2, 3, 4]
puts
```

```ruby
string = "hello"
print string # evaluates to hello
puts
print string.reverse # evaluates to olleh
print string # evaluates to hello
puts
```

## array/string.reverse!

* array/string.reverse! - reverses an array/string in place

```ruby
arr = [1, 2, 3, 4]
print arr # evaluates to [1, 2, 3, 4]
puts
print arr.reverse! # evaluates to [4, 3, 2, 1]
print arr # evaluates to [4, 3, 2, 1]
puts
```

```ruby
string = "hello"
print string # evaluates to hello
puts
print string.reverse! # evaluates to olleh
print string # evaluates to olleh
puts
```

* can use the string.reverse method to easily solve the palindrome question

```ruby
def is_palindrome(word)
	return word == word.reverse
end

puts is_palindrome("madam") # evaluates to true
puts is_palindrome("hello") # evaluates to false
```

## array/string slicing

* array[startIdx..endIdx] - grabs elements from startIdx to endIdx (inclusive)

```ruby
arr = ["a", "b", "c", "d", "e"]
print arr[1..3] # evaluates to ["b", "c", "d"]
puts
```

```ruby
string = "hello"
print string[1..3] # evaluates to ell
puts
```

* array[startIdx...endIdx] - grabs elements from startIdx to endIdx (excluding the element at endIdx)

```ruby
arr = ["a", "b", "c", "d", "e"]
print arr[1...3] # evaluates to ["b", "c"]
puts
```

```ruby
string = "hello"
print string[1...3] # evaluates to el
puts
```

* You can actually use negative slicing in Ruby. If you want to grab the last character in a string, use the index -1. Negative indices correspond to characters starting at the end of the string.

```ruby
string = "hello"
print string[1..-1] # evaluates to ello
puts
```

```ruby
string = "hello"
print string[1..-2] # evaluates to ell
puts
```

```ruby
string = "hello"
print string[-2] # evaluates to l
puts
```

## string.split 

* string.split - evaluates to an array

* You can only use .split on a string. This method basically takes whatever argument it was given and splits the string accordingly. It does not change the original string.


```ruby
str = "follow the yellow brick road"
print str.split(" ") # evaluates to ["follow", "the", "yellow", "brick", "road"]
puts
words = str.split(" ")
puts words[2] # evaluates to yellow
chars = str.split("")
puts chars # evaluates to ["f", "o", "l", "l", "o", "w", "t", "h", "e", "y, "e", "l"," l", "o", "w", "b", "r", "i", "c", "k", "r", "o", "a", "d"]
```

## array.join

* array.join - evaluates to a string

```ruby
arr = ["hello", "world", "how", "are", "you"]
puts arr.join(" ") # evaluates to hello how are you 
```

```ruby
str = "follow the yellow brick road"
print str.split("l") # evaluates to ["fo", "", "ow the ye", "", "ow brick road"]
print str.split("l").join("Z") # evaluates to foZZow the yeZZow brick road
puts
```

* The above method combination removes the l's from the string; because there a double l's in the string, in places where there is a double removal, you get the empty string
* The `.join("Z")` will add Z's to all of the empty strings