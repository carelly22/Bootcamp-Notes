# Array Cheat Sheet

## Manipulation

### Add element(s) to the end using push

```ruby
people = ["Tommy", "Bex"]
print people.push("Maurice", "Abby")  # prints ["Tommy", "Bex", "Maurice", "Abby"]
print people # prints ["Tommy", "Bex", "Maurice", "Abby"]
```

### Remove the last element using pop

```ruby
people = ["Tommy", "Bex"]
print people.pop() # prints "Bex"
print people # prints ["Tommy"]
```

### Add elements to the front using unshift

```ruby
people = ["Tommy", "Bex"]
print people.unshift("Oscar", "Matthias") # prints ["Oscar", "Matthias", "Tommy", "Bex"]
print people # prints ["Oscar", "Matthias", "Tommy", "Bex"]
```

### Remove the first element using shift

```ruby
people = ["Tommy", "Bex"]
print people.shift() # prints "Tommy"
print people # prints ["Bex"]
```

## Checking Existence

### Check if an element exists in an array using include?

```ruby
people = ["Tommy", "Bex", "Abby", "Maurice"]
print people.include?("Abby") # prints true
print people.include?("Mashu") # prints false
```

### Find the index of an element in an array using index

```ruby
people = ["Tommy", "Bex", "Abby", "Maurice"]
print people.index("Abby") # prints 2
print people.index("Maurice") # prints 3
print people.index("Oscar") # prints nil
print people.index("Danny") # prints nil
```

## String <> Array

### Convert a string into an array using split

```ruby
sentence = "Hey Programmers! What's up."
print sentence.split(" ") # prints ["Hey", "Programmers!", "What's", "up."]
print sentence.split("a") # prints ["Hey, Progr", "mmers! Wh", "t's up."]
print sentence.split("gram") # prints ["Hey Pro", "mers! What's up."]
print sentence # prints "Hey Programmers! What's up."
```

### Convert an array into a string using join

```ruby
words = ["Rubies", "are", "red"]
print words.join(" ") # prints "Rubies are red"
print words.join("-") # prints "Rubies-are-red"
print words.join("HI") # prints "RubiesHIareHIred"
print words # prints ["Rubies", "are", "red"]
```