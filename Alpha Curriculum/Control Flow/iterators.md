# Iterators

Goals

* Know that iterators are preferred over `while` and why that is; understand that anything that can be accomplished with an iterator can still be accomplished with `while`
* Know when you might want to use `Array#each_with_index` insetad of `#each`
* Know how to use `Integer#times` to execute a block multiple times
* Know what a `Range` is; know how we can use a `Range` to iterate through a range of index values, without using `while`

It is preferable to traverse a collection such as an array or range using iterators rather than loops. 

An **iterator** is a method that repeats a set of insturctions once for each element in its receiver. Iterators are methods that handle looping automatically, making your code simpler and easier to read.

**Note:** The most important iterator is `each`. The following traversals are equivalent, but `each` is far more elegant:

```ruby
traverse_me = [1, 2, 3]

# using a while loop
idx = 0
while idx < traverse_me.length
  puts traverse_me[idx]
  idx += 1
end

# using the each iterator
traverse_me.each { |el| puts el }
```

The biggest advantage of `each` is that you don't have to keep track of an index variable.


## A Quick Primer on Blocks

A **block** is a way of grouping instructions that's denoted by enclosing curly braces `{}` or `do` and `end` keywords. Blocks are like functions without names attached to them: programmers commonly refer to them as anonymous functions. They receive arguments at the start of the block and execute a series of statements using those arguments.

```ruby
("a".."z").each do |char| # you can use iterators with arrays or ranges
  puts "I'm such a funny character!"
  puts "Look at me: #{char}!"
end
```

The block above acts as a pseudo argument. `each` accepts a block that it invokes once for each element in the receiver collection, passing that element to the block as an argument. When `each` finishes iterating, it returns the receiver ie. it returns the array it was orignally called on.

```ruby
traverse_me_again_please = [1, 2, 3]
traverse_me_again_please.each {|el| puts el} #=> [1, 2, 3]
```

## Closures 

One of the main difference betweens methods and blocks is that blocks are **closures** (they capture or "close over" variables from the outer context in which they are defined).

Closures are like on-way scope gates: a closure can access variables from the scope above it, but the upper scope does not have access to variables defined inside the closure. 

```ruby
def devowel!(str)
  ["a", "e", "i", "o", "u"].each do |vowel|
    str.delete!(vowel)
    str.delete!(vowel.upcase)
  end
  str
end

the_funkiest = "funky monkey"
devowel!(the_funkiest) #=> "fnky mnky"
the_funkiest #=> "fnky mnky" (this method modifies its argument)
```

## Range

A range is exactly what it sounds like:

```ruby
(1..10) #=> this represents numbers from 1 through 10
```

* A range with two dots goes up to and including the second number.
* A range with three dots excludes the second number.

We can iterate over ranges just like we iterated over arrays:

```ruby
(1..10).each do |i|
    puts i * i
end
```

Note that ranges cannot go from a larger value to a smaller value ie `10..1`. One alternative is to convert the range to an array and reverse it:

```ruby
(1..10).to_a.reverse.each do |i|
    puts i
end 
```
In the above case it is probably better to use `Integer#downto`.

## Next and break

`next` and `break` have the same effect in iterators as in loops. Example: 

```ruby
def devowel(str)
    vowels = ["a", "e", "i", "o", "u"]
    new_str = ""

    # we turn the string into an array of characters using chars.
    # an alternative to this is the method each_char
    str.chars.each do |ch|
        next if vowels.include?(ch.downcase)
        # the code below is only reachable when ch is a constant
        new_str += ch 
        end 
    end
    
    new_str
end 

forever_the_funkiest = "funky monkey"
devowel(forever_the_funkiest) #=> "fnky mnky"
forever_the_funkiest #=> "funky monkey" (this method does not modify its argument)
``` 

## Other Essential Iterators

### times

If all you want to do is repeat some code several times, use the `times` method:

```ruby
5.times do
    puts "King of the streets; child at play"
end
```

### each_with_index

`each` is clearner than `while`, but sometimes you also need the index of each element. In this case, you should use `each_with_index`:

```ruby
my_favorite_number = 42
numbers = [42, 3, 42, 5]

favorite_indices = []
numbers.each_with_index do |number, index|
  if number == my_favorite_number
    favorite_indices << index
  end
end
```

`each_with_index` combines the simplicity of `each` with the ability to referene an index.

## each_index 

The `each_index` passes the block each index as an argument rather than the element itself. Like `each`, it returns its receiver.

```ruby
traversed_thrice_is_all_right = [1, 2, 3]
traversed_thrice_is_all_right.each_index do |idx|
  puts "my argument is #{idx}"
  puts traversed_thrice_is_all_right[idx]
end #=> [1, 2, 3]
```

You'll need to use `each_index` rather than `each` in order to access and reassign elements in the receiver array (since `each` only passes in a copy of each element into the block, we cannot modify the original receiver without accessing the index directly):

```ruby
double_me_darling = [1, 2, 3]
double_me_darling.each_index do |idx|
  # this is syntactic sugar for double_me_darling[idx] = double_me_darling[idx] * 2
  double_me_darling[idx] *= 2
end

double_me_darling #=> [2, 4, 6]
```

## each_char

The `each_char` method is essentially the `each` of strings. As its name suggests, it invookes its given block once for each character in the receiver string, passing that character as an argument. It returns its receiver.

```ruby
# like puts, print prints its argument, but it doesn't insert a newline after printing
"alright alright alright".each_char {|ch| print ch.upcase} #=> "alright alright alright"

# note the difference when executed
"alright alright alright".each_char {|ch| puts ch.upcase} #=> "alright alright alright"
```

## each vs for

Ruby also has a `for` loop construct:

```ruby
for item in items
  # ...
end
```

For idiomatic reasons, `for` is not recommended for use. You'll see plenty of Python code use for this way, but in Ruby we'll satisfy ourselves with using `#each`.

