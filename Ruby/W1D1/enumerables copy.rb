# Extend the Array class

# My Each
# Extend the Array class to include a method named my_each 
# that takes a block, calls the block on every element of the 
# array, and returns the original array. Do not use Enumerable's 
# each method. I want to be able to write:

class Array
    def my_each(&prc)
        self.length.times do |i|
            prc.call(self[i])
        end
        self 
    end 
end 

# calls my_each twice on the array, printing all the numbers twice.
# return_value = [1, 2, 3].my_each do |num|
#   puts num
# end.my_each do |num|
#   puts num
# end
# # => 1
#      2
#      3
#      1
#      2
#      3

# p return_value  # => [1, 2, 3]

# My Select
# Now extend the Array class to include my_select 
# that takes a block and returns a new array containing 
# only elements that satisfy the block. Use your my_each method!

# My Any
# Write my_any? to return true if any elements of the array 
# satisfy the block and my_all? to return true only if all elements 
# satisfy the block.

# Example:

# a = [1, 2, 3]
# a.my_select { |num| num > 1 } # => [2, 3]
# a.my_select { |num| num == 4 } # => []

# class Array
#     # my_each
#     def my_each(&prc)
#         self.length.times do |i|
#             prc.call(self[i])
#         end
#         self 
#     end

#     # my_select
#     def my_select(&prc)
#         new_arr = []
#             self.my_each { |ele| new_arr << ele if prc.call(ele) == true }
#         new_arr 
#     end 

#     # my_reject
#     def my_reject(&prc)
#         new_arr = []
#             self.my_each { |ele| new_arr << ele if !(prc.call(ele) == true) }
#         new_arr
#     end

#     # my_any?
#     def my_any?(&prc)
#         self.my_each do |ele| 
#             if prc.call(ele) == true
#                 return true
#             else 
#                 return false 
#             end
#         end 
#     end
    
#     #my_all
#     def my_all?(&prc)
#         self.each do |ele|
#             if prc.call(ele) == false
#                 return false
#             else
#                 return true
#             end 
#         end 
#     end 

#     #my_flatten

#     def my_flatten
#         flattened = []

#         return [self] if self.is_a?(Array) == false 

#         self.my_each do |ele| 
#             flattened += my_flatten[ele]
#         end
#         flattened 
#     end
# end  

