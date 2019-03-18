# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(arr, *other_args)
    new = arr.flatten
    other_args.flatten.each { |ele| new << ele}
    return new
end 

print union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
puts
print union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
