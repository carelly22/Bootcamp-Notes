# Defining Classes

In Ruby, you define a class like this:

```ruby
class Calculator
end 
```

* A class is defined by using the keyword `class`, a name (which starts with an uppercase letter), and the keyword `end`.

* For class names that consist of several words, we use CamelCase eg. `RubyStudyGroup`.

* Class names must start with an uppercase leltter, and should use CamelCase. Variable and method names should use snake_case.

In order to create a new, concrete instance from our class, we do:

```ruby
Calculator.new
```

* The method `new` is defined on every class; it ccreats a new instance of the class and returns it. 

```ruby
p Calculator.new # => #<Calculator:0x007fb2fbe50910>
```

