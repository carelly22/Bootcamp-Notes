# Defining Instance Methods

We know that we can define methods and call them on objects and classes. 

Methods that are available on classes are called *class methods* and methods that are available on instances are called *instance methods*.

```ruby
class Calculator
    def sum(number, other)
        number + other 
    end 
end 
```

* Instance methods are defined inside the class body.

But how do we call the method `sum` on a calculator? Well, we can instantiate ("order), a new instance from our `Calculator` class and call the method `sum` on it like so:

```ruby
calculator = Calculator.new
puts calculator.sum(2, 3) # 5
```