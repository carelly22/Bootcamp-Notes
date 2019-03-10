# Why Hashes?

```ruby
# good array data
animals = ["dog", "cat", "fish", "bird"]

# not so good array data; better as a hash
person = ["Alvin", 100, "New York", "burgers", true]

# the above array, but in a hash
better_person = {
	"name" => "Alvin",
	"age" => 100,
	"location" => "NY",
	"favouriteFood" => "burgers",
	"isHungry" => true
}

puts better_person["location"] # "NY"
```

* We use an array as a collection of multiple things; very often, we use arrays to represent a collection of similar things
* When you are trying to describe many facets of a single thing, then a hash is more useful

# Iterating through Hashes

* Exploring different ways to iterate through hashes using some enumerables

```ruby
pizza = {
	"style" => "New York",
	"slices" => 8, 
	"diameter" => "15 inches",
	"toppings" => ["mushrooms", "green peppers"],
	"is_tasty" => true
}
```

## .each

```ruby
pizza = {
	"style" => "New York",
	"slices" => 8, 
	"diameter" => "15 inches",
	"toppings" => ["mushrooms", "green peppers"],
	"is_tasty" => true
}

# this will print out all of the keys and associated values of the "pizza" hash

pizza.each do |k, v|
	puts k
	puts v
	puts "-----"
end
```

## .each_key

```ruby
pizza = {
	"style" => "New York",
	"slices" => 8, 
	"diameter" => "15 inches",
	"toppings" => ["mushrooms", "green peppers"],
	"is_tasty" => true
}

# print out all of the keys of the "pizza" hash

pizza.each_key do |k|
	puts k
end
```

## .each_value

```ruby
pizza = {
	"style" => "New York",
	"slices" => 8, 
	"diameter" => "15 inches",
	"toppings" => ["mushrooms", "green peppers"],
	"is_tasty" => true
}

# print out all of the values of the "pizza" hash
pizza.each_value do |v|
	puts v
end
```