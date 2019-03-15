# write a method that takes in an array of numbers representing 
# the base of a pyramid
# the function should return a 2D array representing a complete 
# pyramid with the given base; to construct a level of the 
# pyamid, we take the sum of adjacent elements of the level 
# below

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
	pyramid = [base]
	i = 0
	while pyramid.length < base.length
		pyramid << adjacent_sum(pyramid[i])
		i += 1
	end
	return pyramid.reverse
end

def adjacent_sum(arr)
  new_arr = []

  arr.each_with_index do |ele, i|
    if i != arr.length - 1
      new_arr << arr[i] + arr[i + 1]
    end
  end

  return new_arr
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

# create an empty array
# unshift the first array into the empty array
# add the elements of the remaining array using the adjacent sum 
# function
# repeat
# reverse the array
# return the array
