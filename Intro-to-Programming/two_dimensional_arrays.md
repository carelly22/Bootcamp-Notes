# 2-Dimesional Arrays

* We've been storing a lot of data inside of arrays, but what about if we stored an array inside of an array?

```ruby
arr = [
	["a", "b", "c"], 
	["d", "e"],
	["f", "g", "h"] 
]

print arr # prints out ["a", "b", "c"], ["d", "e"], ["f", "g", "h"]
print arr.length # evaluates to 3
subArr = arr[1]
print subArr[1] # evaluates to e
print arr[1][1] # evaluates to e 
puts
```

```ruby
arr = [
	["a", "b", "c"], 
	["d", "e"],
	["f", "g", "h"] 
]

arr.each do |subArr|
	print subArr # will print out each sub array
	puts
	subArr.each do |ele|
		puts ele 
	end
end
```