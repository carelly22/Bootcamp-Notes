# Hash Methods

* Note that keys in a hash are unique
* If you try to create duplicate keys, you will get a warning; when printing out the hash, you will also get the latter value that you assigned to the duplicated key

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
puts dog
```

## Manipulating keys and values in hashes

### Reassigning keys to new values

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}

dog["name"] = "Spot" # changes the value of the key "name" to "Spot"
dog["age"] += 10 # "age" now is equal to 13
dog["enemies"] << "mailman" # "enemies" now is equal to ["squirrel", "mailman"]
```
### Creating new key-value pairs

* Can use the same syntax above to create a new key-value pair

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
dog["location"] = "NY" # this creates a new key "location" with the value "NY"
```

## .length

* If we ever want a count of the number of key-value pairs, we can use the `.length` method

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
puts dog.length # 5
```

## .has_key?(k)

* Use `hash.has_key?(k)` if you ever want to check if a key exists in a hash
* By convention, this method ends in a question mark because it does return a boolean value
* Note that different strings are different keys inside the hash; so the keys are case-sensitive

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
dog.has_key?("color") # => true
dog.has_key?("location") # => false
dog.has_key?("Color") # => "false"
```

## .has_value?(v)

* Use `hash.has_value?(v)` if you want to check if a value exists in a hash

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
dog.has_value?(3) # => true
dog.has_value?(false) # => false
```

## .keys

* If you want an array of all of the keys of the hash, use `hash.heys`; returns an array of everything to the left of the rocket

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}
print dog.keys # => ["name", "color", "age", "isHungry", "enemies"]
print dog.keys[1] # => color
```
## .values

* If you want an array of all of the values of the hash, use `hash.values`; returns an array of everything to the right of the rocket

```ruby
dog = {
	"name" => "Fido",
	"color" => "black",
	"age" => 3,
	"isHungry" => true,
	"enemies" => ["squirrel"]
}

print dog.values # => ["Fido", "black", 3, true, "squirrel"]
```