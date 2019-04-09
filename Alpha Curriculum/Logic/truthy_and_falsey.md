# Truthy and Falsey

Everything in Ruby can be coerced to a boolean value (**truthiness and falseyness**), even if that object is not a boolean. Only `false` and `nil` are falsey; everything else is truthy.

Note that `&&` and `||` always return the last operand evaluated, which may or may not be that last operand in the expression. Because of short-circuiting, this value's truthiness or falseyness is always equivalent to the truthiness or falseyness of the entire expression.

```ruby
# no short-circuiting; "dog" is the last operand evaluated
true && "dog" #=> "dog" (truthy)

# short-circuiting; nil is the last operand evaluated
nil && "dog" #=> nil (falsey)

# no short-circuiting; false is the last operand evaluated
nil || false #=> false (falsey)

# short-circuiting; "cat" is the last operand evaluated
"cat" || nil #=> "cat" (truthy)
```

**Note:** When in doubt of the truthiness or falseyness of a value, use `!!`. 

`!` returns `true` or `false` for a given operand - the opposite of that operand's truthiness or falseyness. `!!` thereforee retruns the boolean that correctly corresponds to the object's truthiness or falseyness (it returns the opposite of the opposite).

```ruby
# "cat" is truthy, therefore !"cat" is false, therefore !!"cat" is true
!"cat" #=> false
!! "cat" #=> true
```