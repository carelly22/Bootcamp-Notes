# 1
# Does this code throw an error?
a = 10
def a_plus_10
  a + 10
end
a_plus_10

# Yes
# a is defined in the top-level scope and is therefore not in the 
# context of a_plus_10. The Ruby interpreter throws an error upon 
# invocation when it tries to parse and execute the method body.

# 2 
# Does this code throw an error?
a = 10
def a_plus_10
  a + 10
end

# Yes
# Although the method is incorrectly defined, the Ruby 
# interpreter encounters the error only when the method is invoked.

# 3
# Does this code throw an error?
a = 10
def a_plus_10
  a + 10
end
puts a

# No
# puts a is in the scope where a was defined (the top-level scope). 
# Therefore a can be referenced.

# 4 
# Does this code throw an error?
a = 10
def a_plus_10
  b = 2
  10 + 10
end
puts b

# Yes
# puts b is in the top-level scope, but the variable b is defined in the scope 
# of a_plus_10 and is therefore undefined in puts b.

# 5
# Does this code throw an error?
a = 10
def a_plus_10
  a = 10
  a + 10
end
a_plus_10

# No
# Although a is initially defined in the top-level scope, a new, unrelated 
# variable a also defined in the scope of a_plus_10. a is therefore defined 
# when referenced in a + 10.

# 6
# Does this code throw an error?
def cat
  "Cat"
end

def dog
  "Dog"
end

def catdog
  cat + dog + " was cartoon about a conjoined feline"
end

catdog

# No
# cat and dog are valid helper methods of catdog.

# 7
# Which strategies would debug a_plus_10?
a = 10
def a_plus_10
  a + 10
end

# Defining a new method, a, which returns 10, before invoking a_plus_10.
# In a_plus_10, using 10 instead of a.
# The first choice would make a in the method body refer to a helper method. 
# The second choice would avoid using an undefined variable by substituting 
# that variable's would-be value. The third choice would ensure that a variable 
# a is defined in the same scope where it is referenced (the scope of a_plus_10). 
