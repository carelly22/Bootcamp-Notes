# write a method that takes in two words and returns a boolean
# indicating whether or not the words are anagrams
# anagrams are words that contain the same characters but not 
# necessarily in the same order
# solve this without using .sort

def anagrams?(word1, word2)
	if word1.length != word2.length
		return false
	else
		word2.each_char do |ele|
			if !(word1.include?(ele))
				return false
			end
		end
		return true 
	end
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false