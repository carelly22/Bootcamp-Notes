# write a method that takes in a word string and translates the word
# into pig latin

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add "yay" to the end
# - for words that start with a nonvowel, move all letters before the first
# vowel to the end of the word and add "ay"

def pig_latin_word(word)
	words = word.split("")
	vowels = "aeiou"
	new_word = ""
	words.each_with_index do | ele1, idx1 |
		if (vowels.include?(ele1) && idx1 === 0)
	 		words << "yay"
	 		new_word = words.join("")
	 		return new_word
		else
			words.each_with_index do | ele2, idx2 |
				if (idx2 > idx1) && (vowels.include?(ele2) && (idx2 - idx1 === 1))
					idx2.times{
					last = words.shift()
					new_word = words.push(last)
					}
					new_word = (words << "ay").join("")
					return new_word
				end
			end
		end
		# 		#2.times {
	# 		last = words.shift()
	# 		words.push(last)
	# 		#}
	# 		new_word = (words << "ay").join("")
	end
end

print pig_latin_word("apple") # => "appleyay"
puts 
print pig_latin_word("eat") # => "eatyay"
puts
print pig_latin_word("banana") # => "ananabay" 
puts
print pig_latin_word("trash") # => "ashtray"
puts
print pig_latin_word("split") # => itsplay

# problem steps
# convert str to arr
# want to iterate through the arr
# check to see if arr[0] = vowel or consonant
# if yes, add "yay"
# if no, shift and push the letters to the end of the word until get a vowel
# after get vowel add "ay"
# convert arr to str
