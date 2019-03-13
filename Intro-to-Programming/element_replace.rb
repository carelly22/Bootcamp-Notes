# write a method that takes in an array and a hash
# and returns a new array where elements of the 
# original array are replaced with their corresponding
# values in the hash


def element_replace(arr, hash)

	new_arr = []

	arr.each do |ele|
		hash.each do |k, v|
			if ele == k
				new_arr << v
			end
			if hash.has_key?(ele) == false && new_arr.include?(ele) == false
				new_arr << ele
			end
		end
	end

	return new_arr

end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

# Instuctor Solution
# def element_replace(arr, hash)
# 	new_array = []

# 	arr.each do |ele|
# 	# if ele is a key of the hash, then shovel it's value 
# 	if hash.has_key?(ele)
# 		new_array << hash[ele]
# 	else
# 		# else ele is not a key of the hash, then shovel the original
# 		new_array << ele
# 	end
# end