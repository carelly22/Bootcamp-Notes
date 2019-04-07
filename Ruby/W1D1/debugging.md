# Debugging 

## Rule #1: Read the Error

The error gives you valuable pieces of information. The first three are absolutely essential to read and understand whenever an error occurs.

* Error type
* Error message
* Line number on which the error occurred
* Chain of methods that were called leading up to it (referred to as the **stack trace**)

## Perform a Mental Stack Trace

The stack trace below the error message can be extremely helpful, but it usually won't give you the exact information you need to fix your bug. What it does tell you is the path your program took to get to wherever the error happened.

Whenever you encounter a bug your ability to track it down will be dependent on your ability to trace the logic of your own code.

Interrogate your code actively. Why did the bug happen? What are the values of the key variables at key points in your program? What did each line evaluate to leading up to the bug?

Do not passively stare at your code or simply assume that what you think happened is what actually happened (this is what got you in trouble in the first place!). Some strategies include:

* Break your code down into more testable chunks and actively run each of those chunks to test if they're working.
* Use `p` statements often; use them to check what the values of variables are, that methods are called as expected, etc.
* Use the debugger.

The key with bugs and errors is to really get into the mind of the machine. You must understand what is happening in the code. To do so, you must seek out helpful feedback from the program, constantly testing your assumptions about what is happening.

You are a programmer. You hunt bugs. Hunt well.

## Write code that's testable

```ruby
# primes.rb

primes = []

num = 1
while primes.count < 100
  is_prime = true
  (1..num).each do |idx|
    if num % idx == 0
      is_prime = false
      break
    end
  end

  if is_prime
    primes << num
  end
end

puts primes
```

This program doesn't work; it doesn't look like it ever returns. Where's the bug (or bugs)?

The bugs could be anywhere, but we don't have the ability to isolate and test individual parts of the code. When we load up this file, it immediately starts running all the code.

Let's make this more *testable*: let's break the code into small, bite-sized methods. Small methods are easier to test, because you can test each part independently.

General hint: when you write a script, write all your code inside of methods. Only a very little bit of code should be written at the top level to kick things off.

```ruby
# primes.rb

def prime?(num)
  (1..num).each do |idx|
    if num % idx == 0
      return false
    end
  end
end

def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
    primes << num if prime?(num)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100)
end
```

This code uses a common trick. We will want to be able to load our code without running it immediately. In particular, we'd like to directly call the methods and diagnose whether each is working. But before we were blocked because the program immediately started executing the script and entering an infinite loop.

The solution is the trick if `__FILE__ == $PROGRAM_NAME`. This checks to see if the currently running program (`$PROGRAM_NAME`) is the same as the current file (primes.rb). If so, then this is being invoked as a script, so we should kick things off. Otherwise, we're loading it as part of some other program (like irb or Pry), and we shouldn't do more than load the method definitions so that someone else may use them.

Great. Now we can test the `prime?` and primes pieces individually. If one works and the other doesn't, we can focus on the single broken method. Even if both are broken, we can fix `prime?` first, and then try to debug `primes` knowing that `prime?` at least works.

Also, because `prime?` and primes do one simple thing, we know what they're supposed to do: `prime?(2)` should be true. `prime?(4)` should be false. `primes(3)` should be `[2, 3, 5]`.

This is better than a huge, black-box method which does a bunch of complicated stuff where it's hard to even know what the right answer should be.

## Pay technical debt

If you encounter buggy code that is poorly decomposed into methods, **fix the design immediately**. You're going to want to fix the design eventually anyway; refactoring will probably create new bugs to fix, so you might as well deal with this bug at the same time.

More importantly, good code is the gift that keeps on giving. If this code is broken today, it's safe to assume that it will bite you in the ass with another bug a few days from now, too. And every time you come back to this code, you'll be fighting its poor design as you try to deal with it. Try to fix it now once and for all.

In the rush to complete projects, bad design is sometimes a compromise made to finish a project on-time. This is called technical debt. It's okay to take out debt like this, just like it's okay to take out financial debt. But the more debt you take out, the higher the payments in the form of your time.

If you find yourself struggling with a tough bug in the midst of some poorly written code, admit that your debt has caught up with you, bite the bullet and refactor.

## Don't read the source

We haven't found out what's wrong yet. You might be tempted to first look carefully at `prime?` and `primes`, try to reason through them, and spot the bug. You may be able to do this with my simple example.

Do not spend more than 1min doing this in real life. Yes, many silly bugs can be spotted if you stare at the code, but many other silly bugs are difficult to spot because our eyes play tricks on us. You know how you can still read a paragraph with the spaces taken out? For the same reason, it's hard to spot silly bugs, because you know what the code is supposed to do.

Your bug may not be a simple bug. If it's at all non-trivial, it will be very hard to spot. The best way to find a bug like this is to take your code step-by-step. We'll see how to do that soon.

Yes, when debugging you should look at the source to familiarize yourself with the code. The bug may jump out at you. If not, don't worry. We're about to learn better techniques.

## Use a REPL to isolate the problem

Now that we've broken the code up into testable bits, let's actually test those parts. That lets us quickly isolate the problem to a few lines.

Open the Pry REPL. Make sure you have done `gem install pry` first.

```ruby
david ~/Dropbox/TA $
pry
```

Load your file and start testing.

```ruby
[1] pry(main)> load 'primes.rb'
=> true
[2] pry(main)> prime?(2)
=> false
```

Awesome. We've already found a regression; an input which produces the wrong output. There might also be problems with `primes`, but it would have been a real PITA to try to fix those when the underlying `prime?` method is broken.

Decomposition for the win.

Now we need to take a more fine-grained look at exactly what is wrong with our `prime?` method.

## Use a debugger to zero in on the problem

In Ruby versions 2.0 and greater, we use byebug for debugging:

`gem install byebug`

Byebug lets us do many cool things. We can step through our code one line at a time, and along the way...

* check the value of our variables at any time (no `p` required!)
* continuously watch the value of a variable, so that we can see when it changes
* change the value of variables in the middle of program execution
* set breakpoints so that we can pause whenever we reach a certain line in our code
* examine the call stack to determine exactly which methods brought us to a certain line of code
* execute short snippets of code to test an idea (just like in pry or irb)

**Note:** a minor downside of the byebug gem is that it does not support colored syntax highlighting. However, I will apply coloring to the following examples so that they are easier to read.

## Step through code

Once you've isolated a bug to a small amount of code, the best way to uncover the problem is to single-step through the code, checking what the program does along the way. This is what a debugger (such as byebug) does.

To start, we need to modify our program slightly so that we drop into the debugger when `prime?` is called:

```ruby
require 'byebug'

def prime?(num)
  debugger # drops us into the debugger right after this point

  (1..num).each do |idx|
    if num % idx == 0
      return false
    end
  end
end

def primes
  # ... etc.
```

**N.B.** Don't forget to `require 'byebug'` at the top of your file.

Let's load our code into pry and call `primes?(2)` to start testing the `primes?` method. The debugger at the top of `prime?` will pause our code there. At this point, you are basically like Neo.

```ruby
david ~/Dropbox/TA $
pry
[1] pry(main)> load 'primes.rb'
=> true
[2] pry(main)> prime?(2)

[1, 10] in primes.rb
    1: require 'byebug'
    2:
    3: def prime?(num)
    4:   debugger # drops us into the debugger right after this point
    5:
=>  6:   (1..num).each do |idx|
    7:     if num % idx == 0
    8:       return false
    9:     end
   10:   end
(byebug)
```