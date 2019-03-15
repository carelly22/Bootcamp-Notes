# a number's summation is the sum of all positive numbers
# less than or equal to the number; eg. the summation of 
# 3 is 6 beacuse 1+2+3=6 and the summation of 6 is 21
# because 1+2+3+4+5+6=21
# write a method that takes in two numbers, start and length
# and returns an array containing length total elements
# the first number in the of the sequence should be the 
# start number
# at any point, to generate the next element of the sequence, we take 
# the summation of the previous element
# assume that length is not zero

def summation_sequence(start, length)

	sequence = [start]
	while sequence.length < length
		sequence << sum(sequence[-1]) # call the helper function here
	end
	return sequence

end

# define a helper function to calculate the sum of num
def sum(num)
	total = 0
	(1..num).each do |n|
		total += n		
	end
	return total
end

print summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print summation_sequence(5, 3) # => [5, 15, 120]

# Instructor code
# def summation(n)
#   sum = 0

#   (1..n).each do |i|
#     sum += i
#   end

#   return sum
# end

# def summation_sequence(start, length)
#   seq = [start]

#   while seq.length < length
#     prev = seq[-1]
#     seq << summation(prev)
#   end

#   return seq
# end


# print summation_sequence(3, 4) # => [3, 6, 21, 231]
# print summation_sequence(5, 3) # => [5, 15, 120]