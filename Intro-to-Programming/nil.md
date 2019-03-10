# Nil

* nil represents "nothing" or "empty"
* commonly appears as a default value throughout the program

```ruby
my_array = ["a", "b", "c"]

print my_array[2] # c
print my_array[3] # this will print out nothing; is actually nil
p my_array[3] # nil

my_hash = {
	"name" => "Bob",
	"age" =>0
}

p my_hash["name"] # "Bob"
p my_hash["location"] # nil
```

* If you use an invalid index, you get back `nil`
* If you use an invalid key, you get back `nil`