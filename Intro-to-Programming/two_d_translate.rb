# write a method that takes in a 2 dimensional array
# and translates it into a 1 dimensional array
# you can assume that the inner arrays always have 2 elements 

def two_d_translate(arr)
	new_arr = []
	arr.each_with_index do | ele1, idx1 |
		subArr = arr[idx1]
		subArr.each_with_index do | ele2, idx2 |
			subArr.each_with_index do | ele3, idx3 |
				if idx3 > idx2
					ele3.times {new_arr << ele2}
				end
			end
		end
	end	
	return new_arr
end

arr_1 = [
	["boot", 3],
	["camp", 2],
	["program", 0]
]

print two_d_translate(arr_1) # => [ "boot", "boot", "boot", "camp", "camp"]

puts

arr_2 = [
	["red", 1],
	["blue", 4]
] 

print two_d_translate(arr_2) # => [ "red", "blue", "blue", "blue", "blue" ]

# problem steps 
# create empty array to push new ele into
# need to access the sub arrays
# then iterate & compare elements in the sub-sub arrays
# if idx2 > idx1 then push ele1 ele2 times into the new empty array