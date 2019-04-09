# Conditional Statements

**If statement:** An if statement has two parts; the *test expression* (the code that immediately follow the `if`), and the *then expression* (the code between the if expression and the `end`). The *then expression* will only run when the *if expression* is truthy.

```ruby
if 5 +7 == 12
    puts "This code will be executed!"
end 
```

There is also an if-else statement: 

```ruby
if 2.odd?
    puts "Two is odd, who knew?"
else
    puts "Two is even, all is well!"
end 
```

The *else expression* is executed if the *test expression* is falsey. If the *test expression* were truthy, the *else expression* would not be executed.

Ruby also has an if-elsif-else construction. Similary to `if`, `elsif` precedes a test expression. You can stack `elsif` statements, but not `else` statements. There can only be one instance of `if...else` in a control flow statement. 

Note that if no conditions are truthy and the conditional statement lacks an `else` expression, then the entire statement evaluates to `nil`.

```ruby
if 2 == "dog"
    puts "Not executed."
elsif 2 == "cat"
    puts "Not executed."
elsif "cat" == "dog"
    puts "Not executed."
else
    puts "2, cat, and dog are not equal!"
end
```

For simple if statements, one can invert the conditional expression and the *else expression* using the following syntax:

```ruby
puts "You many find this syntax more idomatic" if true

# this is equivalent
if true
    puts "You many find this syntax more idomatic"
end
```

The `unless` keyword is the opposite of `if`. It directs the interpreter to execute the *then expression* if the test condition is *falsey*:

```ruby
unless 2 > 3 
    puts "This code will be executed."
end
```

`elsif` and `else` do not have opposites. `else` can be used in an unless statement, although `elsif` is not permitted. 

**NOTE:** In general, `if`/`else`/`ifelse` statements are preferred over `unless`.