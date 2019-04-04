# class Array
#     # Write a method, Array#bubble_sort, that takes in an optional proc argument.
#     # When given a proc, the method should sort the array according to the proc.
#     # When no proc is given, the method should sort the array in increasing order.
#     def bubble_sort(&prc)

#     end
# end 


def bubble_sort(array, &prc)
    sorted = false 
    while !sorted 
        sorted = true 

        (0...array.length - 1).each do |i|
            if prc.call(array[i], array[i + 1]) == -1 # we need to make the the prc provides -1; this sorts in decreasing order 
                array[i], array[i + 1] = array[i + 1], array[i]
                sorted = false
            end 
        end 
    end
    
    array
end 

p bubble_sort([6, 10, 8, -5, 9, 0, 8, 3, 2]) { |a, b| a.to_s <=> b.to_s }
puts

p bubble_sort([6, 10, 8, -5, 9, 0, 8, 3, 2]) { |a,b| a <=> b }

puts

sorted = bubble_sort(["y", "z", "b", "x", "m"]) do |a,b|
    alpha = ("a".."z").to_a
    alpha.index(a) <=> alpha.index(b)
end

p sorted 