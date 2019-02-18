# write a method that takes in 2 arrays and returns a new array containing the results 
# of adding together corresponding elements of the original arrays
# you can assume that the arrays have the same length

def sum_elements(arr1, arr2)
	i = 0
	summed = []
	while i < arr1.length
		summed << arr1[i] + arr2[i]
		i += 1	
	end
	return summed
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]