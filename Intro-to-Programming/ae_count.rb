# write a method thwt takes in a string and returns a hash
# containing the number of a's and e's; assume the string only
# contains lowercase letters

def ae_count(str)
count = { 
	"a" => 0,
	"e" => 0
}

str.each_char do |char| 
	puts count 
	if (char == "a" || char == "e")

		count[char] += 1
	end 
end
return count
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}