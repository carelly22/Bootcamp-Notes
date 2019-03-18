# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(array)
    return array.flatten.sum
end

# alternative solution
# def multi_dimensional_sum(array)
#     return array.flatten.inject { |accum, el| accum + el}
# end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

print multi_dimensional_sum(arr_1)    # => 19

puts

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

print multi_dimensional_sum(arr_2)    # => 24
