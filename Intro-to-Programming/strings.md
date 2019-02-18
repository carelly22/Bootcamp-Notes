# Strings

## What is a string?
* A string is a string of characters
* eg. `"Hello world!"`

## Find the length of a string
* Count the length of a string using .length method
* eg. puts `"Hello".length`
* This will print the length of the string 

## Get a specific character
* Pick out a single character in a string - use its index
* eg. `puts "Hello"[0] #prints out H` 

## Adding strings
* Add or concatenate strings using `+`
* eg. `puts "Hello " + "world " + ", how are you?" # prints out Hello world, how are you?`

## How are strings indexed?
* Indices for strings start at 0
* Last index will always be one less than the length of the string

## Iterating through strings with Loops

```ruby
str = "hello"
i = 0
while i < str.length
	puts str[i]
	i += 1
end
```

```ruby
def printChars(str)
	i = 0
	while i < str.length
		puts str[i]
		i += 1
	end
end

printChars("pizza")
## 
