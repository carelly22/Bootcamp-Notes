def fizzBuzz(max)
	arr =[]
	(1...max).each do |num|
		if (num % 3 == 0 && num % 5 != 0) || (num % 3 != 0 && num % 5 == 0)
			arr << num
		end 
	end
	return arr
end

print fizzBuzz(20)