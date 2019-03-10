# Hashes Cheatsheet

* Quick Reference for the methods and operations for hashes 

## Access

```ruby
hash = { "name" => "App Academy", "color" => "red"}

print hash["color"] # prints red
print hash["age"] # prints nil

k = "color"
print hash[k] # prints redd

hash["age"] = 5
print hash # prints {"name" => "App Academy", "color" => "red", "age" => 5}
```

## Checking Existence

```ruby
hash = { "name" => "App Academy", "color" => "red"}

print hash.has_key?("name") # prints true
print hash.has_key?("age") # prints false
print hash.has_key?("red") # prints false

print hash.has_value?("App Academy") # prints true
print hash.has_value?(20) # prints false
print hash.has_value?("color") # prints false
```

## Hash Enumerable Methods

```ruby
hash = { "name" => "App Academy", "color" => "red"}

hash.each { |key, val| print key + ", " + val } # prints
# "name, App Academy"
# "color, red"

hash.each_key { |key| print key } # prints
# "name"
# "color"

hash.each_value { |val| print val } # prints
# "App Academy"
# "red"
```

## Hash.new

```ruby
plain_hash = { }
plain_hash|"city"| = "SF"
print plain_hash["city"] # prints "SF"
print plain_has["country"] # prints nil

hash_with_default = Hash.new("???")
hash_with_default["city"] = "NYC"
print hash_with_default["city"] # prints "NYC"
print hash_with_default["country"] # prints "???"
```