# write a method that takes in a string and returns a boolean indicating whether 
# or not it is a valid name

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
	names = str.split(" ")
	if names.length >= 2	
		names.each do | name | 
			if (name[0] === name[0].upcase) && (name[1..((name.length)-1)] === name[1..((name.length)-1)].downcase)
				return true
			else
				return false
			end
		end
	else
		return false
	end
end

print is_valid_name("Kush Patel")       # => true
puts
print is_valid_name("Daniel")           # => false
puts
print is_valid_name("Robert Downey Jr") # => true
puts
print is_valid_name("ROBERT DOWNEY JR") # => false

# string = "hello"
# puts string[1..-1] # prints out ello

# split the string into an array so that you can iterate through the names OK
# check that the name is >= 2 words *because we broke the string into an array this will also check for spaces OK
# check that name has proper format - capital letters at start OK
# if these two coniditions are satisfied, return true OK