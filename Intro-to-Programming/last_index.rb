# write a method that takes in a string and a character
# that returns the last index where the character can be found
# in the string

def last_index(str, char)
hash = {}

str.each_char.with_index { |ele, idx| hash[ele] = idx }

return hash[char]

end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

# Instructor code 

# def last_index(str, char)
#   i = str.length - 1
#   while i >= 0
#     if str[i] == char
#       return i
#     end
#     i -= 1
#   end
# end
