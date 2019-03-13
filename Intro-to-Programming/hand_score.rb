# write a method that takes in a string representing a 
# hand of cards and returns it's total score; you can
# assume the letters in the string are only A, K, Q, J
# A is worth 4 points
# K is worth 3 points
# Q is worth 2 points
# J is worth 1 point
# the letters of the string are not necesarily uppercase

def hand_score(hand)

new_hand = hand.upcase

count = 0

new_hand.each_char do |char|
	if char == "A"
		count += 4
	end
	if char == "K"
		count += 3
	end
	if char == "Q"
		count += 2
	end
	if char == "J"
		count += 1
	end
end

return count

end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9

# Instructor code

# def hand_score(hand)
#   points = {
#     "A"=>4,
#     "K"=>3,
#     "Q"=>2,
#     "J"=>1
#   }

#   score = 0
#   hand.each_char { |char| score += points[char.upcase] }
#   return score
# end

# puts hand_score("AQAJ") #=> 11
# puts hand_score("jJka") #=> 9
