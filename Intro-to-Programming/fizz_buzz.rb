# write a method that takes in a number max and returns an array containing all of the numvers
# greater than 0 and less than max that are divisible by either 4 or 6 but not both

def fizz_buzz(max)
	new_arr = []
	i = 4
	while i < max
		if (i % 4 == 0 && i % 6 != 0) || (i % 4 != 0 && i % 6 == 0)
			new_arr << i
		end
		i += 1 
	end
	return new_arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]