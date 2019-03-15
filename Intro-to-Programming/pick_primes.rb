# write a method that takes in an array of numbers and 
# returns a new array containing only the prime numbers

def pick_primes(numbers)
	return numbers.select { |num| prime?(num)}
end

def prime?(num)
	count = 0
	(1..num).each do |n| 
		if num % n == 0
			count += 1
		end
	end 
	if count == 2
		return true
	else 
		return false
	end
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts

# Initial code
# def pick_primes(numbers)
# 	primes = []
# 	count = 0
# 	numbers.each do |num|
# 		(2..num).each do |n|
# 			if (num % n == 0)
# 				count += 1
# 			end
# 		end
# 		if count == 1
# 			primes << num
# 		end
# 		count = 0
# 	end
# 	return primes
# end

# print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
# puts
# print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
# puts

# Instructor code
# def pick_primes(numbers)
#   return numbers.select { |num| prime?(num)}
# end

# def prime?(num)
#   if num < 2
#     return false
#   end

#   (2...num).each do |factor|
#     if num % factor == 0
#       return false
#     end
#   end

#   return true
# end

# print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
# puts
# print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
# puts