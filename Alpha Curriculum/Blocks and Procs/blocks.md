# Blocks

## Goals 

* Understand the purpose of blocks
* Know how to define a block, especially one that takes in arguments 
* Understand why not to `return` from inside a block
* Know how and why to pass a symbol into a method that takes a block

## What is a block?

A block is a chunk of code that gets passed into methods. Methods then **call** the block to customize their own behaviour. 

For example:

```ruby
[1,2,3].map { |num| num + 1 } # => [2, 3, 4]
```

`map` applies a block to each element of the array. What it does depends wtih each element depends on the block. For example, in the code below we square each element:

```ruby
[1,2,3].map { |num| num * num } # => [1, 4, 9]
```

## Block Syntax

Blocks are either wrapped in curly braces or with a "do" and "end". The previous example can be written as:

```ruby
[1,2,3].map do |num|
    num * num
end 
```

**Note:** Use braces for single line blocks, and *always use do-end for longer blocks!*

Blocks are passed to a method, but they do not appear in the list of arguments. They come after the closing parentheses, if there are any:

```ruby
3.times { puts "Hey, friend!" } # don't need aprens when there are no args 
3.times() { puts "Hey, friend!" } # block is given outside parens if they are used
```

Blocks take arguments, just like methods do. The argument names are wrapped in pipes `|`.

```ruby
[1,2,3].map { |num| num * num }
```

In the above code, `map` is going to call the block repeatedly; it will pass in each of the elements. Each time, the element (1,2,3), will be bound to the `num` argument declared between the pipes.

## Avoid return inside a block

Blocks implicitly return values like Ruby methods; the last value is implicitly returned from the block. 

This is how `Enumerable#map` works; it calls the block on each element, adding the retuned value to a new collection:

```ruby
[1,2,3].map do |num|
    num + 1 # num + 1 will be returned
end

# => [2,3,4]
```

Do **not** explicitly `return` from a block:

```ruby
[1,2,3].map do |num|
    return num + 1
end
```

This will not merely return from the block; **it will return from the context where the block was defined**.

## Symbols and blocks

It is very common to have blocks that take an argument and call a single method:

```ruby
["a","b","c"].map do |str|
    str.upcase # upcase all strings
end

[1,2,5].select do |num|
    num.odd?
end 
```

In this case, Ruby gives us a shortcut:

```ruby
["a", "b", "c"].map(&:upcase)
[1,2,5].select(&:odd?)
```

But what is happening here? Using the `&` symbol calls `#to_proc` on the item following the ampersand. It basically takes the method and "wraps" it in an object so that we can pass it in as an argument. Normally, methods cannot be passed into other methods like this, so "wrapping" it in this way is necessary. When `#to_proc` is called on a symbol, we get back a `Proc` object that just calls a method with the same name as  the symbol on its argument. 