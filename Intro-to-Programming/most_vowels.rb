# write a method that takes in a sentence
# string and returns the word of the sentence 
# with the most vowels

def most_vowels(sentence)

	hash = {}

	vowels = "aeiou"

	count = 0

	sentence.split.each do |word|
		word.each_char do |char|
			if vowels.include?(char)
				count += 1
			end
			hash[word] = count
		end
		count = 0
	end
	
	sorted = hash.sort_by { |k,v| v}
	return sorted[-1][0]
end

print most_vowels("what a wonderful life") #=> "wonderful"

# problem steps

# split the string into an array of words
# initialize a hash
# set the hash[word] = number of vowels in the word
# return value with highest num


# Instructor code
# def most_vowels(sentence)
#   counts = {}

#   sentence.split.each do |word|
#     counts[word] = vowel_count(word)
#   end

#   sorted = counts.sort_by { |k,v| v}
#   return sorted[-1][0]
# end

# def vowel_count(word)
#   count = 0
#   vowels = "aeiou"

#   word.each_char do |char|
#     if vowels.include?(char)
#       count += 1
#     end
#   end

#   return count
# end

# print most_vowels("what a wonderful life") #=> "wonderful"