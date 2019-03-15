# the fibonacci sequence is a sequence of numbers whose first and last
# elements are one 
# to generate further elements of the sequence, we take the sum of the 
# previous two elements eg. the first 6 fibonacci numbers are 1,2,2,3,5,8
# write a method that takes in a number length and returns the fibonacci
# sequence up to the given length

def fibonacci(length)

	seq = []
	if length == 0
		return seq
	elsif length == 1
		seq << 1
	else
		seq = [1, 1]
		while seq.length < (length)
				seq << seq[-2]+seq[-1]
		end
	end
	return seq

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts

# problem steps
# initialize an array
# for each iteration, push the 
# sum of the last two elements of the array
# return the array

# Instructor code

# def fibonacci(length)
#   if length == 0
#     return []
#   elsif length == 1
#     return [1]
#   end

#   seq = [1, 1]

#   while seq.length < length
#     last = seq[-1]
#     second_to_last = seq[-2]
#     next_ele = last + second_to_last
#     seq << next_ele
#   end

#   return seq
# end

# print fibonacci(0) # => []
# puts
# print fibonacci(1) # => [1]
# puts
# print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
# puts
# print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
# puts