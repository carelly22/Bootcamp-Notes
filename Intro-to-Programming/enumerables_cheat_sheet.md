# Enumerable Cheat Sheet

## Array Enumerables Methods

### Iterate over elements of an array using each

```ruby
people = ["Candace", "Jon", "Jose"]
people.each { |person| puts person } # prints 
# Candace
# Jon
# Jose
```

### Iterate over elements of an array with index using each_with_index

```ruby
people = ["Candace", "Jon", "Jose"]
people.each_with_index do |person, idx|
	puts person
	puts idx
	puts "-----"
end # prints 
# Candace
# 0
# -----
# Jon
# 1
# -----
# Jose
# 2
# -----
```

## String Enumerable Methods

### Iterate over characters of a string using each_char

```ruby
greeting = "hello"
greeting.each_char { |char| puts char } #prints 
# h
# e
# l
# l
# o
```

### Iterate over characters of a string with index using each_char.with_index

```ruby
greeting = "hello"
greeting.each_char.with_index do |char,i|
	puts char
	puts i
	puts "---"
end # prints
# h
# 0
# ---
# e
# 1
# ---
# l
# 2 
# ---
# l 
# 3 
# ---
# o
# 4
# ---
```

## Other

### Repeat a block using times

```ruby
3.times do
	puts "hi"
end # prints
# hi
# hi
# hi
```

### Specify a range of numbers using (start..end) or (start...end)

```ruby
# including end
(2..6).each { |n| puts n } # prints
# 2
# 3
# 4 
# 5
# 6
```

```ruby
# excluding end
(2...6).each { |n| puts n } # prints
# 2
# 3
# 4
# 5
```