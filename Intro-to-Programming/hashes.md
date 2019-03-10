# Hashes Lecture 1

## Hashes - Data Structures

* While in an array we have elements stored in indices, in a hash, we have values stored by 
* Declare a hash using curly braces `{}`
* Separate key-value pairs using commas
* `=>` this is called a rocket. Rockets separate keys and values. Everthing to the left of a rocket is a key; it points to the corresponding value.
* If you ever want to retrieve data from the hash, just need to specify the key with square brackets `[]` 
* To change the value of a key, simply reference the key and reassign it. Manipulating the values of a hash is similar to manipulating the values of variables

```ruby
my_hash = {
	"name" => "App Academy",
	"color" => "red", 
	"age" => 5, 
	"isAwesome" => true,
	42 => "hello"
}

my_hash["color"] = "pink"
my_hash["age"] += 1

puts my_hash["name"] # => returns "App Academy"
puts my_hash # {"name" => "App Academy", "color" => "pink", "age" => 6, "isAwesome" => true, 42 => "hello"}
```