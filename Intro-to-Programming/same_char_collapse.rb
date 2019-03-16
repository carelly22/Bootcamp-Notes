# write a method that takes in a string and returns a collapsed
# version of the string
# to collapse the string, we repeatedely delete 2 adjacent characters
# that are the same until there are no such adjacent characters
# if there are multiple pairs that can be collapsed, delete the 
# leftmost pair
# for eg. we take the following steps to collapse "zzzxaaxy"
# "zzzxaaxy" > "zxaaxy" > "zxxy" > "zy"

def same_char_collapse(str)
	collapsible = true

	while collapsible
		collapsible = false

		chars = str.split("")
		chars.each.with_index do |char, i|
			if chars[i] == chars[i+1]
				chars[i] = ""
				chars[i+1] = ""
				collapsible = true
				break
			end
		end
		str = chars.join("")
	end
	return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy
puts same_char_collapse("uqrssrqvtt") #="uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv