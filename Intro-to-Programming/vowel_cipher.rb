# write a method that takes in a string and returns a new string
# where every vowel becomes the next vowel in the alphabet

def vowel_cipher(string)
	vowels = "aeiou"
	changed = ""
	
	string.each_char do |char|
		if vowels.include?(char)
			old_index = vowels.index(char)
			new_index = old_index + 1
			changed += vowels[new_index%vowels.length]
		else
			changed += char
		end
	end

	return changed
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap