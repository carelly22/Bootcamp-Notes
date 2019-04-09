# Loops

## Goals

* Know what an index variable is; know that index variables conventionally start at zero
* Know how to write a `while` loop
* Know how to break out of a loop 
* Be comfortable nesting loops when necessary; know not to nest too deeply

## While loops

The below code shows an infinite loop (a sequence of instructions that loops  endlessly). An infinite loop is almost always a mistake:

```ruby
while 2 < 3 # conditional expression
    2 + 3 # body
end 
```

While loops:
* Begin with a keyword `while` 
* Follow with a conditional expression
* Finish with the keyword `end`

The interpreter executes the body only if the conditional expression evaluates to a truthy value. The interpreter will recheck the condition continuously and execute the body again and again until the condition is false.

A correctly implemented `while` loop:

```ruby
i = 0
while i < 5
    puts "Repeat 5 times!"
    puts "This is time #: #{i}"

    i += 1
end 

puts "Hooray! The loop is over!"
```
**The above is the most basic loop. If all else fails, you can always fall back on this loop.**

*A note on terminology:* An **iteration** is the act of repeating a procedure, hence looping is an iterative technique. Each repetition itself is also called an "iteration".

### Indices start at zero

Do not write programs will indices starting at one; you will confuse the other programmers.

### Until

The `until` keyword is the opposite of `while`. It directs the interpreter to loop until a *truthy* condition is met:

```ruby
counter = 0

until counter == 10
    puts "This is the iteration number #{counter.to_s}"
    counter += 1 # the syntactic-sugar equivalent to counter = counter + 1
end 
```

### Using `return` in a loop

While loops always evaluate to `nil`; however, one can explicitly return a value from the loop(and the method) using the `return` keyword:

```ruby
def first_num_greater_than_ten(arr)
    index = 0
    while index < arr.length
        # is_a? checks whether an objet belongs to a data type. Numeric is one of many types available
        if arr[index].is_a?(Numeric) && arr[index] > 10
            return arr[index]
        end 
        index += 1
    end
    # if no number meeting the criteria is found, the method implicitly returns nil 
end 
```

### While without and index

In more practical scenarios (ie. not with an index), `while` loops are usually used when we want to keep looping until something happens, but don't know exactly how many times around that may be. An example is repeatedly getting user input until they type the word `quit`:

```ruby
def process_user_input 
    command = get_user_input
    while command != "quit"
        perform_command(command)

        command = get_user_input    
    end 

    puts "Good bye!"
end 
```

This will loop through as many commands as the user enters, up until he or she types that appropriate comman telling the program to stop.

Notice that the "update" of `command` happens at the end of the `while` loop. This is a typical pattern; we check the condition, perform the relevant code, then update a loop variable.

## Break

A loop can be termindated without returning from the method using the `break` keyword. `break` occasionally takes an optional argument that designates the loop's value upon termination.

```ruby
def to_uninfinity_and_beyond
  while true
    "I'd be an infinite loop without break"
    break
  end
  "reachable code"
end

counter = 0

while true
  puts "This is iteration number #{counter.to_s}!"
  counter += 1
  break counter if counter > 10 # the loop's value is the last value of counter
end
```

## Next

The `next` keyword skips the loop ahead to its next iteration:

```ruby
counter = 0

while counter < 11
  counter += 1
  next if counter.odd?
  puts "I only print the even numbers between 1 and 10, including #{counter.to_s}."
end
```

## Nesting loops

Loops can be nested or placed inside each other. Examples:

```ruby
i = 1
while i <= 10
  j = 1
  while j <= 10
    multiples << i * j
    j += 1
  end

  i += 1
  p multiples
end
```

Avoid deep nesting. Nested code should be split out into methods. Two levels deep is usually okay, more is almost always bad. For instance, we could change our times table code like this:

```ruby
def multiples(i)
  ms = []
  j = 1
  while j <= 10
    ms << i * j
    j += 1
  end

  ms
end

i = 1
while i <= 10
  p multiples(i)
  i += 1
end
```