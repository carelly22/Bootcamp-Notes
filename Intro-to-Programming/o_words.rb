# write a mehtod that takes in a sentence string and 
# returns an array of the words that contain an "o"
# use select for this problem


def o_words(sentence)

sentence.split(" ").select { |ele| ele.include?("o")}

end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts