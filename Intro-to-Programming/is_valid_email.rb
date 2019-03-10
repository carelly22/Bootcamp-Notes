# write a method that takes in a string and returns a boolean indicating
# whether or not it is a valid email address

# For simplicity, we'll consider an email valid when it satisfies all of the following
# conditions

# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
	idx_at = str.index("@")
	idx_dot = str.index(".")
	count = 0
	
	str.each_char do | char | 
		if char === "@"
			count += 1
		end
	end
	
	if !((str[0...idx_at].include?("@")) || (str[0...idx_at].include?("."))) && (idx_at < idx_dot) && (count === 1)
		return true
	else
		return false
	end
	
end

print is_valid_email("abc@xy.x") # => true
puts
print is_valid_email("jdoe@gmail.com") # => true
puts
print is_valid_email("jdoe@g@mail.com") # => false

# problem steps

# can just check the indices of the string
# check the index of @
# make sure that before the @ only alphabetic letters 
# make sure that after the @ only one . 
# return true if the above is true