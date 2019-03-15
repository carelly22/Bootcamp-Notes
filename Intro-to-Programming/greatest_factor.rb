# write a method that takes in an array of numbers and 
# returns an array where every even number is replaced 
# with it's greatest factor
# a greatest factor is the largest number that divides 
# another with no remainder
# for example, the greatest factor of 16 is 8

def greatest_factor_array(arr)
	new_arr = arr.map do |num|
		if num % 2 == 0
			factor(num)
		else
			num
		end
	end 
end

def factor(num)
	factors = []
	(1...num).each do |n|
		if num % n == 0
			factors << n
		end
	end
	return factors[-1]
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

# Instructor code
# check if a number is a factor
# def factor(num)
# 	factors = []
# 	(1..num).each do |n|
# 		if num % n == 0
# 			factors << n
# 		end
# 	end
# 	return factors[-2]
# end

# print factor(16)

# def greatest_factor_array(arr)
#   new_arr = arr.map do |num|
#     if num % 2 == 0
#       greatest_factor(num)
#     else
#       num
#     end
#   end

#   return new_arr
# end

# def greatest_factor(num)
#   (1...num).reverse_each do |i|
#     if num % i == 0
#       return i
#     end
#   end
# end

# print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
# puts
# print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
# puts