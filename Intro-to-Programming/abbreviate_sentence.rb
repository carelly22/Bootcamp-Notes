# write a method that takes in a sentence string and returns a new 
# sentence where every word longer han 4 characters has all of it's 
# vowels removed

def abbreviate_sentence(sent)
	words = sent.split(" ")
	sentence = []
	words.each do | word |
		vowels = "aeiou"
		new_word = ""
		if word.length <= 4
			sentence << word
		else
			word.each_char do | char |
				if vowels.include?(char) === false
					new_word += char
				end
			end
			sentence << new_word
		end
	end
	final_sentence = sentence.join(" ")
end

print abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts 
print abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


# what do we want to do

# break the sentence into an array with spaces for better iteration OK
# create an empty arr OK
# iterate through arr OK
# for length < 4 push word to new arr OK
# for length > 4 iterate through chars OK
# push chars that != vowel to new word OK
# push word to arr OK
# join arr into string OK