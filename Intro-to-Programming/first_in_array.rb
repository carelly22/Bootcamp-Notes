def first_in_array(arr, el1, el2)
	idx1 = arr.index(el1)
	idx2 = arr.index(idx2)
	if idx1 < idx2 
		return idx1
	else
		return idx2
	end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"