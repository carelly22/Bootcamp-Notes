# write a method that takes in an array whose elements alternate between words and numbers
# the method should return a string where each word is repeated the number of times that 
# immediately follows in the array

def array_translate(array)
	string = ""
	array.each_with_index do | ele1, idx1 |
		puts idx1
		array.each_with_index do | ele2, idx2 |
			if (idx2 > idx1) && (idx2-idx1 === 1) && (idx1 % 2 === 0)
				ele3 = ele1*ele2.to_i
			end
			string << ele3.to_s
		end
	end
	return string
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

# problem steps

# assume that the array begins with a word OK
# words will be odd indices OK
# numbers will be even indices OK
# iterate through the arrray and multiply the words OK