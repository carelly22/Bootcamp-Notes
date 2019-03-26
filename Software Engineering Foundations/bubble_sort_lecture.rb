def bubble_sort(arr)
	# need to use a variable to track whether or not the array is sorted
	# if it is sorted, then you're done
	# the variable should be a boolean
	sorted = false

	while !sorted # while not false, enter the loop
		sorted = true
		(0...arr.length-1).each do |i|
			# if the adjacent elements are out of order
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				sorted = false
			end
		end
	end
	arr 
end

arr = [2, 8, 5, 2, 6]
p bubble_sort(arr) # => [2, 2, 5, 6, 8]

# aside
# arr[0], arr[1] = arr[1], arr[0]
# p arr

# because you are looking ahead by one element, you should stop
# iterating one element early
# bubble sort is actually the worst algorithm to sort, as 
# it is very slow