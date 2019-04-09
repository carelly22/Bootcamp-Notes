# Logical Operators

The three logical operators in Ruby are:

* `&&` AND : evaluates to `true` if both operands are true
* `||` OR : evaluates to `true` if at keast one operand is true
* `!` NOT : evaluates to `true` if the operand is false and `false` if the operand is true

```ruby
true && true #=> true
true && false #=> false
false && false #=> false

true || true #=> true
false || true #=> true
false || false #=> false 

!true #=> false 
!false #=> true 
```

Note that Ruby does not evaluate the code after `||` in `true || false` since it is superfluous. Since the first operand is `true`, the expression will be true regardless of the second operand. This behaviour is an example of **short-circuit evaluation**, where the second operand of a logical operator is evaluated only if the first operand does not suffice to determine the value of the expression. 

`!` is sometimes known as *bang*, and reverses the boolean value of an operand. Though `!` receives a single operand, that operand can be the result of an expression eg. `!(false || true)` returns `false`. `!false || true` would return `true` and would shot circuit.

`&&` and `||` also permit expressions as operands. 

```ruby
3 < 5 && "cat" < "dog" #=> true 
5 < 3 || "cat" != "cat" #=> false
```