# Write a method that takes in a sentence string and returns 
# the sentence with the order of the characters in each word 
# reversed
# Note that we need to reverse the order of the characters in 
# the words and not the order of the words in the sentence

def reverse_words(sent)
	sentence = sent.split(" ")
	new_sentence = []
	sentence.each do | word |
		new_word = word.reverse!
		new_sentence << new_word
	end
	new_array = new_sentence.join(" ")
end

print reverse_words("keep coding") # => "peek gnidoc"
puts 
print reverse_words("simplicity is prerequisite for reliability") # => "yticilpmis si etisiuqererp rof ytilibailer"

# problem steps

# convert the string to an arr separated by spaces
# create new arr
# for each word, reverse it in place and push it to the new arr
# convert new arr to new string using .join
# return new string