# write a method that takes in a number and returns an array containing 
# all of the prime factors of the given number

def prime_factors(num)
	factors = []
	(2..num).each do |n|
		if num % n == 0 and prime?(n)
			factors << n
		end
	end
	return factors
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
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

# Instructor code
# def prime_factors(num)
#   prime_facts = []

#   (1..num).each do |i|
#     if num % i == 0 && prime?(i)
#       prime_facts << i
#     end
#   end

#   return prime_facts
# end

# def prime?(n)
#   if n < 2
#     return false
#   end

#   (2...n).each do |i|
#     if n % i == 0
#       return false
#     end
#   end

#   return true
# end

# print prime_factors(24) #=> [2, 3]
# puts
# print prime_factors(60) #=> [2, 3, 5]
# puts