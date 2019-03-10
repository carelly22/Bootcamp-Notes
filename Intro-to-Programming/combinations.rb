# write a method that takes in an array of unique elements
# and returns a 2d array representing all possible combinations 
# of 2 elements of the array

def combinations(arr)
	two_d = []
	arr.each_with_index do | ele1, idx1 |
		arr.each_with_index do | ele2, idx2 |
			new_arr = []
			if (idx1 != idx2) && (idx2 > idx1)
				new_arr.push(ele1, ele2)
				two_d.push(new_arr)
			end
		end
	end
	return two_d
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ]]
puts
print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ] , [ 0, 2 ] , [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3]]

# problem steps
# create a blank array that will be the parent array
# create inner arrays for each of the pairs
# check the indices of each element and make sure they are diff & idx2 > idx1
# once this is true, push the two elements to the inner arrays
# return the outer array once all of the pairs have been checked