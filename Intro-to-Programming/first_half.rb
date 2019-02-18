# write a method that takes in an array and returns a new array
# containing the first half of the elements in the array
# if there is an odd number of elements, return the first half including
# the middle element

def first_half(array)
	i = 0
	half = []
	while i < (array.length / 2.0)
		half << array[i]
		i += 1
	end
	return half
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]