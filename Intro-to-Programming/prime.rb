# write a method that takes in a number and returns a boolean 
# indicating whether or not the number is prime; a prime number
# is only divisible by 1 and itself
# by defintion numbers < 2 are excluded

def prime?(num)

	count = 0
	
	if num < 2 
		return false
	else
		(2..num).each do |ele|
			if (num % ele == 0) 
				count += 1
			end
		end
	end
	if count > 1 
		return false
	else
		return true
	end

end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

# Instructor code
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

# puts prime?(2)  #=> true
# puts prime?(5)  #=> true
# puts prime?(11) #=> true
# puts prime?(4)  #=> false
# puts prime?(9)  #=> false
# puts prime?(-5) #=> false