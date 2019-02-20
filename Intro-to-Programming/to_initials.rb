# write a method that takes in a person's name string 
# and returns a string representing their initials

def to_initials(name)
	words = name.split(" ")
	initials = ""
	words.each do |ele1|
		initials += ele1[0]
	end
	return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

# Instructor solution
# def to_initials(name)
#   parts = name.split(" ")
#   initials = ""
#   parts.each { |part| initials += part[0] }
#   return initials
# end

# puts to_initials("Kelvin Bridges")      # => "KB"
# puts to_initials("Michaela Yamamoto")   # => "MY"
# puts to_initials("Mary La Grange")      # => "MLG"