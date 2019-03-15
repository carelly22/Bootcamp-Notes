# write a method that takes in a number and returns a boolean
# indicating whether it is a perfect square; a prefect square
# is a number that resukts from multiplying a number by itself
# eg. 9 is a perfect square because 3*3=9, 25 is a perfect square 
# because 5*5=25

def perfect_square?(num)
	# need to find the squares of the num
	squares = []
	(1...num).each do |n|
		if num % n == 0
			squares << n*n
		end
	end

	if squares.include?(num)
		return true
	else 
		return false
	end
end


print perfect_square?(5)   #=> false
puts
print perfect_square?(12)  #=> false
puts
print perfect_square?(30)  #=> false
puts
print perfect_square?(9)   #=> true
puts
print perfect_square?(25)  #=> true

# Instructor code
# def perfect_square?(num)
#   (1..num).each do |factor|
#     if factor * factor == num
#       return true
#     end
#   end

#   return false
# end

# puts perfect_square?(5)   #=> false
# puts perfect_square?(12)  #=> false
# puts perfect_square?(30)  #=> false
# puts perfect_square?(9)   #=> true
# puts perfect_square?(25)  #=> true