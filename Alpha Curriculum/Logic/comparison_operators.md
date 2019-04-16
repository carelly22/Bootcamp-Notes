# Comparison Operators in Ruby

```ruby
> # greater than
< # less than
>= # greater than or equal to
<= # less than or equal to 
== # is equivalent to # == and NOT = checks for equality
!= # is not equal to 
# recall that = is the assignment operator, and CANNOT be used for equality
# comparisons
```

The expression generally evaluates to `true` if the proposition is valid and to `false` if it is invalid.

```ruby
3 > 2 #=> true
3 >= 2 #=> true
3 < 2 #=> false
3 <= 2 #=> false
3 == 2 #=> false
3 != 2 #=> true
```

Ruby also permits string and symbol comparison. `"cat" < "dog"` returns `true` because `"cat"` precedes `"dog"` alphabetically (`:cat < :dog` is equivalent). One can compare different data types only when checking for equality. `"cat" < 4` throws an error. `"cat" != false` returns `true`. One can compare arrays only for equality, i.e., one array is not greater or less than another:

```ruby
[] == [] #=> true
["cat"] == ["cat"] #=> true
["cat"] >= ["cat"] # throws an error
["cat"][0] >= ["cat"][0] #=> true #(equivalent to "cat" >= "cat")
```

Every comparison operator returns a boolean value except for `<=>`, the **spaceship operator**. The spaceship operator functions somewhat how it looks. No, it won't take you to Mars, but it does do something almost as cool. The spaceship operator is a hybrid between "less than," "equal to," and "greater than." `a <=> b` returns `-1` if `a < b`, `0` if `a == b`, and `1` if `a > b`:

```ruby
2 <=> 3 #=> -1
2 <=> 2 #=> 0
3 <=> 2 #=> 1
```