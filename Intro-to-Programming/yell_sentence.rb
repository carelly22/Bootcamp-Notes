# write a method that takes in a sentence string and 
# returns a new sentence where every word is yelled 
# use a map to solve this 

def yell_sentence(sent)

	yelled = sent.split(" ")

	new_sent = yelled.map { |ele| ele.upcase + "!"}

	yelled_sent = new_sent.join(" ")

end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"