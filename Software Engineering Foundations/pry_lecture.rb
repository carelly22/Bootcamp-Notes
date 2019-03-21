greens = ["kale", "spinach", "arugula"]

def is_prime?(num)
    (2...num).each do |factor|
        return false if num % factor == 0
    end

    num > 1
end

# pry is another ruby REPl
# R - Read lines 
# E - Evaluate them
# Print out the result 
# Loop all over again
# use a REPL as a sandbox to see how simple lines behave 

# pry
# load "name.rb"
# this is how you can load a file in pry

# pry
# show-doc String#method
# look up the documentation for a particular method 

# pry
# load "rubyfile"
# show-source method_in_rubyfile
# look up the source code for a method 

# note: if you show the source for built-in methods, you will see C code
# because under the hood, a high-level language like Ruby is implemented
# in C

# pry
# cat "rubyfile"
# print out rubyfile in the pry console 