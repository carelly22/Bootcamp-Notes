# Methods

## What are methods for?

* A method gives us a clean way to refer to the same code again and again

## Creating a method

* You must define the method, using the keyword `def`

```ruby
# Defining a method
def method_name
	# your code
end
```

```ruby
# Defining a method
def sayMessage
	puts "Hey programmers!"
	puts "What's for lunch?"
end
```

## Calling a method

* To call a method, you simply say the name of the method

```ruby
sayMessage
```

* Recall that Ruby executes from the top down

## Taking in data

* Use parentheses and have your method acceot a parameter

```ruby
# Defining a method
def method_name(parameter)
	# your code
end
```

* A parameter is just like a variable. You can use any number of parameters for your method.

```ruby
# Defining a method
def method_name(parameter1, parameter2, ..., parameterN)
	# your code
end
```

## Method Return Values

* Return lets you give back a type of data - lets the method call evaluate to that data

```ruby
# Defining a method
def calc_average(num1, num2)
	sum = num1 + num2
	avg = sum / 2.0
	return avg 
end

#the return keyword lets a method call evaluate to a variable

puts calc_average(5, 10)

result = calc_average(5, 10)
```














