# a > b # false 
# it could be the case that a == b or a < b; we don't know which one 
# we don't get a clear picture on where the two numbers are on the number line 
# relative to each other 

# a <=> b 

# when a is less that b, return -1
p 3 <=> 5

# when a is greater than b, return 1 
p 50 <=> 3 

# when a is equal to b, return 0 
p 3 <=> 3 

# def compare(a, b)
#     if a <=> b == -1 # this code will give a syntax error, so we need to force precedence on the <=>
#         p "a is less than b"
#     elsif a <=> b == 1
#         p "a is greater than b"
#     else
#         p "a is equal to b" 
#     end 
# end 

# def compare(a, b)
#     if (a <=> b) == -1
#         p "a is less than b"
#     elsif (a <=> b) == 1
#         p "a is greater than b"
#     else
#         p "a is equal to b" 
#     end 
# end 

# bubble sort takes in an array and sorts them in increasing array
# def bubble_sort(array)
#     sorted = false 
#     while !sorted 
#         sorted = true 

#         (0...array.length - 1).each do |i|
#             if array[i] > array[i + 1]
#                 array[i], array[i + 1] = array[i + 1], array[i]
#                 sorted = false
#             end 
#         end 
#     end
    
#     array
# end 

# for your sorting method, if you want to decide the criteria for sorting, you 
# you want to take in a proc

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

# p bubble_sort([6, 10, 8, -5, 9, 0, 8, 3, 2]) { |a,b| a <=> b }
sorted = bubble_sort(["y", "z", "b", "x", "m"]) do |a,b|
    alpha = ("a".."z").to_a
    alpha.index(a) <=> alpha.index(b)
end

p sorted 
# a prc is an object that you can use in ruby and can call 
# methods like .call on 

# alpha = ("a".."z").to_a 
# this quickly creates an array from a to z 

# the huge upshot of the <=> operator is that if you use that within a proc
# you can generalize your sorting alogorithm for any type of data