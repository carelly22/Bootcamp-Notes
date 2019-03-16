# write a method that takes in a sentence and returns a new sentence
# where every word begins with it's first vowel

def consonant_cancel(sentence)
	vowels = "aeiou"
	main_arr = sentence.split
	arr = main_arr.map do |word|
		word_iterate(word)
	end
	return arr.join(" ")
end

def word_iterate(ele)
	vowels = "aeiou"
	i = 0
	new_word = ""
	while i < ele.length
		if (vowels.include?(ele[i]))
			return new_word = ele[i..-1]
		end
		i += 1
	end
end

# print word_iterate("challenging")

print consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts
print consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

# need to split string into array
# split each word into chars?
# iterate through chars
# unshift non-vowels
