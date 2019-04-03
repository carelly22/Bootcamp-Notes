# Spaceship Operator <=>

We can use the spaceship operator `<=>` to relatively compare two values. Previously, we used the basic comparators of`<`, `>`, `<=`, `>=` to compare values, so what new behavior does the spaceship operator give us access to? 

Well, you can think of `<=>` as an operation we can use to combine all of those basic comparators into one.

Before we explore the spaceship operator, let's begin with some motivation. Given two variables, `a` and `b`, what does the following expression tell you?

```ruby
a < b   # => false
```

Since the expression above evaluates to `false`, it can either be the case that "a is equal to b" or "a is greater than b". If we need to know exactly which one is the case, a simple check using `<` won't be enough since the output only tells us that "a is not less than b". However, we can use the spaceship operator to get an unambigious signal to where a and b lie on the number line relative to each other.

## How it Works
The spaceship operator `<=>` is used between two values and will return `-1`, `0`, or `1`. The behavior is as follows:

Given the expression `a <=> b`
* it will return `-1` if `a` is less than `b`
* it will return `0` if `a` is equal to `b`
* it will return `1` if `a` is greater than `b`

Here are a few examples of spaceship operator being used to compare numbers:

```ruby
7 <=> 2     # => 1
7 <=> 7     # => 0
2 <=> 7     # => -1
10 <=> 2    # => 1
-5 <=> 10   # => -1
-3 <=> -9   # => 1
```