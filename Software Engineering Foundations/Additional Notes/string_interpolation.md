# String Interpolation

You can stick or concatenate strings together by using the `+` operator. Consider the below code: 

```ruby
name = "Ada"
puts "Hello, " + "name" + "!" # => Hello, Ada!
```

Glueing strings together like this works, but there is another method you can use that is preferred over concatenating strings with `+`.

This method is called "string interpolation", and this is how it looks: 

```ruby
name = "Ada"
puts "Hello, #{name}!" # => Hello, Ada!
```

With string interpolation, everything between the opening `#{` and closing `}` bits is evaluated as Ruby code, and the result of this evaluation will be *embedded into* the string surrouding it. 

That it, when Ruby finds `#{name}` in this string, it will evaluate the piece of Ruby code `name`. It will find that this is a variable, return the value of the variable (the string, `"Ada"`), and then embed it into the surrounding string `"Hello, #{name}!"` by replacing `#{name}`. 

**Note**: String interpolation *does not* work with single quotes, only double quotes. In addition, escape sequences (eg. `\n`, `\t`) only work in double quotes.