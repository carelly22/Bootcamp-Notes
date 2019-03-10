# write a method that takes in a name and returns it 
# properly capitalized

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
	arr = str.downcase.split(" ")
	new_arr =[]
	arr.each do |name| 
		new_arr << name[0].upcase + name[1..-1]
	end
	return new_arr.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"