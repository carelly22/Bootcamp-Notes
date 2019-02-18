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

## Method and function

* In general, method and function are just terms that refer to executable chunks of code
* To be truly correct, we only use method when talking about Ruby

## Variables 

* Variables are names that can hold data
* eg. `food = "toast" # this is a variable that holds the value toast`


## Parameters

* Parameters are names that can hold data in a method definition
* Parameters are placed in parentheses following the method's name

```ruby
def meal (food, drink) # food and drink are parameters
	sentence = "I like to eat " + food + " with a cup of " + drink
	puts sentence
```

## Arguments

* Arguments are the data vakues that we pass into a method when we call the method

* We place arguments into the parentheses of a method call. Thos areguments values will be assigned to the parameters when we evaluate the method

```ruby
def meal (food, drink) # food and drink are parameters
	sentence = "I like to eat " + food + " with a cup of " + drink
	puts sentence

meal("toast", "coffee") # Here we pass "toast" and "coffee" into our method
meal("pancakes", "orange juice") # Here we pass "pancakes" and "orange juice" into our method
```

* In other words, arguments are concrete data values we pass into method calls
* Parameters are placeholders that we use to write a general method