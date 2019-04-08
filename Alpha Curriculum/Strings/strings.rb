string = "string"
string[0] = "s" = first element of the string
string[-1] = "g" = last element of the string 
string[0..2] = "str"
string[0...2] = "st"
string[0..-1] = "string" # this outputs the entire string
# we're able to supply a range from one index to another
# and we'll be able to get those individual letters that are 
# occupying that index

# .. means inclusive 
# ... means exclusive 

# like arrays, strings use [] for access 
# each character corresponds to an index 
# strings are 0-indexed like arrays 
# The only difference between array access and string 
# access is that the first and last methods are unavailable to strings.

words_to_the_third = "Words, words, words."
words_to_the_third[0] #=> "W"
words_to_the_third[-1] #=> "."
words_to_the_third[2..10] #=> "rds, word"
words_to_the_third[2..-1] #=> "rds, words, words."
words_to_the_third[2..(words_to_the_third.length - 1)] #=> "rds, words, words."
words_to_the_third[99] #=> nil

# String assignment uses the same syntax as array assignment.


scary_word = "palindromic"
scary_word[0] = "a"
scary_word #=> "aalindromic"
scary_word[1..6] = "ibohph"
scary_word[-3..-1] = "bia"
scary_word #=> "aibohphobia"

# As you'd probably guess, one concatenates strings similarly to arrays. 
# The only difference is that the shovel operator (<<) also concatenates 
# strings. While shoveling one array into another causes nestedness, 
# strings cannot be nested; << therefore merely concatenates strings.

# concatenation with + does not modify the original string
broken_half_one = "we belong"
broken_half_two = "together"
broken_half_one + " " + broken_half_two #=> "we belong together"
broken_half_one #=> "we belong"

# use syntactic sugar to modify broken_half_one
broken_half_one += " "
broken_half_one += broken_half_two
broken_half_one #=> "we belong together"

# concatenation with concat or << modifies the original string
broken_half_one = "we belong"
broken_half_two = "together"
broken_half_one.concat(" ")
broken_half_one #=> "we belong "
broken_half_one << "together"
broken_half_one #=> "we belong together"

s1 = "string"
# s1 points to a particular memory spot

s2 = s1 
# we're trying to establish another reference to s1
# s2 points to the same spot in memory that s1 is pointing to 

s1 << "!"
# we would expect s1 to now be the value of string with a "!"
# the string gets mutuated; if we do something to our String object
# we're not changing where this variable is pointing to or where the 
# information is stored; we are ammending the information in place (mutation)  
# .concat and << both mutate strings 

s1 = "string"
s2 = s1
s1 += "!!" # s1 = s1 + "!!"
# s1 => "string!!"
# s2 ?
# note that the += reassigns the value of s1 to a new spot in memory
# s2 will not change when s1 is reassigned 
# s2 = "string"

# Garbage collection - the process of removing information that was previously 
# stored in memory that we no longer have a reference to or need in our 
# programs clears out that space in memory for us; frees up so we can 
# use it in the future if we were so inclined

s1 = "string"
s2 = s1 
# s1 = "string"
# s2 => "string"
s1 << "!!!"
# s1 => "string!!!"
# s2 => "string!!!"

# s1 is a pointer pointing to a specific spot in memory
# by assigning s2 = s1, you are pointing it to the same spot in memory

s2.concat("new stuff")
# s2 => "string!!!new stuff"
# s1 => "string!!!new stuff"
# s1 and s2 have the same object ids 
s3 = "string!!!new stuff"
# s3 will have a different object id even though it has the same contents as 
# s1 and s2 
s1 += "wild crazy adventure"
# we have reassigned s1 
# s2 => "string!!!new stuff"
# s2 and s1 will now have different object ids because they have different contents 
