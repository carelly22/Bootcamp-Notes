# Write a method that takes in an array and a number and returns
# the array after rotating the elements the specified number of times
# a single rotation takes the last element of the array and moves it
# to the front 

def rotate_array(arr, num)

num.times do 
	ele = arr.pop
	arr.unshift(ele)
end

return arr

end

print rotate_array(["Matt", "Danny", "Mashu", "Matthias"], 1) # => ["Matthias", "Matt", "Danny", "Mashu"]
puts 

print rotate_array(["a", "b", "c", "d"], 2) # => ["c", "d", "a", "b"]

# problem steps

# can use the times method?
# need to pop the last ele off and then unshift the ele to the front of the arr