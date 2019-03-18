# def say_hello(first_name, *other_args)
#     print first_name
#     print other_args
# end

# def say_hello(first_name, last_name)
#     print first_name
#     print last_name
# end

# say_hello("alvin", "zablan", "teacher", "apple", "cat")
# puts 
# say_hello("alvin")
# puts
# say_hello() # wrong number of arguments (given 0, expected 1+)

# arr = ["a", "z"]
# say_hello(*arr)
# puts

# a parameter is the abstract placeholder, similar to a variable
# an argument is the actual data passed in 

def say_hello(first_name, middle_name, last_name)
    print first_name
    print middle_name
    print last_name
end


arr = ["a", "al", "z"]

say_hello(*arr)
puts

teachers = ["oliver", "simcha", "tommy"]

new_teachers = [*teachers, "david", "abby"] # decomposes teachers and puts it into new_teachers

p new_teachers

hash = {a:1, b:2}
new_hash = { **hash, c:3, d:4} # use 2 splats to unpack a hash
# when using splat on a hash, the keys need to be symbols, they cannot be any 
# other type of data
print new_hash
puts