def repeat(str,n=1) # the default value for n is one
    print str * n
end

repeat("hi", 3)
puts 
repeat("hi")
puts

# note that a common practice is setting the default 
# value to nil

def print_h(hash)
    print hash
end

print_h({"city"=>"NY", "colour"=>"red"})
puts
print_h("city"=>"NY","colour"=>"red") 
# when passing in a hash into a method directly, you
# can omit the curly braces
puts

def print_h(name, hash)
    print name
    puts
    print hash
end

print_h("alvin", "city"=>"NY", "colour"=>"red")
puts