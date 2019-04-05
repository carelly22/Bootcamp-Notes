# Scope

**Scope** refers to the visibility of variables and methods defined in one part of the program to another part of the program. 

**Context** is the set of variables and methods available to a given part of a program. Scope determins context.

```ruby
a = 5

def scope_test
  b = 1
  a
end

puts a
scope_test
```

`puts a` successfully prints `5`, but invoking `scope_test` results in an error:

```ruby
undefined local variable or method 'a' for main:Object
(repl):5:in 'scope_test'
(repl):9:in '<main>'
```

Method definition is an example of a **scope gate** - an entrance to a new scope. Because method definition is a scope gate, one can define a variable inside a method with the same name as one already defined in another scope without reassigning the original variable. Even if they share names, variables in distinct scopes are themselves distinct.

```ruby
a = 5

def define_new_variable_a
  a = "not 5"
  a
end

define_new_variable_a #=> "not 5"
a #=> 5
```

This code snippet seems to introduce an exception to this theory of scope:

```ruby
  def howdy
    "Howdy"
  end

  def partner
    howdy + ", partner!"
  end

partner #=> "Howdy, partner!"
```

How does `partner` invoke `howdy`? Isn't `howdy` defined outside of the scope of `partner`, specifically in the top-level scope? `howdy` is visible to `partner` because `howdy` is not a local variable. It's a method defined on `main`, a special kind of Ruby object. You'll learn more about `main` later. For now observe that you can invoke methods from within other methods without worrying about scope.

**Note:** Non-local variables such as class and instance variables can also persist across scopes. Object-oriented programming supplies a more nuanced model of scope and how it relates to `main` and variable types.

## Separation of Concerns

`howdy` is a helper method, one that helps another method perform its task by managing a subtask. Say we want to write a method, n`um_prime_factors(num)`, that determines the number of prime factors of its argument. This method might delegate to two helper methods:

1. `factors(num)`, which determines the factors of a number.
2. `prime?(num)`, which determines whether a number is prime.

The concept of helper methods introduces two principles of software design: **Separation of Concerns** and the **Single Responsibility Principle**. 

**Separation of Concerns** dictates separating a program into distinct sections that each address a specific concern. 

The **Single Responsibility Principle** dictates that each section should entirely encapsulate the functionality for which it is responsible. Modular, encapsulated code is easier to debug and is more readable and recyclable!

