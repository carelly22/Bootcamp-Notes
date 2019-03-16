sym = :hello
str = "hello"

# symbols are immutable; they cannot be mutated/changed
# strings are mutable; they can be changed
print sym
puts 
print str
puts
print sym.length
puts 
print str.length
puts 

str[1] = "x"
print str # hxllo
puts 

#sym[1] = "x"
#print sym # this will lead to an error; no operation to mutate the symbol

# symbols might not seem to be useful, but there is a sort of 
# efficiency that comes from immutable data 

bootcamp1 = {:name=>"app academy", :color=>"red"}
print bootcamp1
puts
bootcamp2 = {name:"map academy", color:"scarlet"} # Ruby shorthand
print bootcamp2
puts