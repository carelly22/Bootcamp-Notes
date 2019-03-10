# write a method that takes in a two dimenstional array and 
# returns the sum of all elements in the array

def two_d_sum(arr)
	sum = 0
	arr.each_with_index do | ele1, idx1 |
		subArr = arr[idx1]
		subArr.each_with_index do | ele2, idx2 |
			subSubArr = subArr[idx2]
			sum += subArr[idx2].to_i
		end
	end
	return sum
end

array_1 = [
	[4, 5],
	[1, 3, 7, 1]
]

print two_d_sum(array_1) # => 21
puts

array_2 = [
	[3, 3],
	[2],
	[2, 5]
]

print two_d_sum(array_2) # => 15

# problem steps
# set up sum variable
# want to access the inner elements of the arrays and add them to sum
# once all the elements have been added, return sum