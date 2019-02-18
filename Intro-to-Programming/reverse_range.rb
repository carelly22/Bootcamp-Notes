# write a method that takes in 2 numbers min and max
# returns an array containing all numbers from min to max
# in reverse order
# min and max should be excluded from the array

def reverse_range(min, max)
	i = max - 1
	reversed = []
	while i > min
		reversed << i
		i -= 1
	end
	return reversed 
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]