# write a method that takes in an array of words and returns a 
# new array containing a whispered version of each word
# solve using a map

def whisper_words(words)

return words.map { |ele| ele.downcase + "..."}

end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts