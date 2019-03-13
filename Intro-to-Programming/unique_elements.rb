# write a method that takes in an array and returns a new array
# where all duplicate elements are removed
# solve this by using a hash
# Hint: all keys of a hash are automatically unique

def unique_elements(arr)

unique_hash = {}

arr.each { |ele| unique_hash[ele] = ""}

unique = []

unique_hash.each_key { |char| unique << char }

return unique

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts