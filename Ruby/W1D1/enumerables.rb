require "byebug"

# my_each 
# Extend the Array class to include a method named my_each 
# that takes a block, calls the block on every element of 
# the array, and returns the original array. Do not use Enumerable's 
# each method.

# my_select
# Now extend the Array class to include my_select that takes a block 
# and returns a new array containing only elements that satisfy the 
# block. Use your my_each method!

# my_reject
# Write my_reject to take a block and return a new array excluding 
# elements that satisfy the block.

# my_any? and my_all?
# Write my_any? to return true if any elements of the array satisfy the block 
# and my_all? to return true only if all elements satisfy the block.

# my_flatten
# my_flatten should return all elements of the array into a new, one-dimensional 
# array. Hint: use recursion!

# my_zip
# Write my_zip to take any number of arguments. It should return a new array 
# containing self.length elements. Each element of the new array should be an 
# array with a length of the input arguments + 1 and contain the merged elements 
# at that index. If the size of any argument is less than self, nil is returned 
# for that location.

# my_rotate
# Write a method my_rotate that returns self rotated. By default, the array 
# should rotate by one element. If a negative value is given, the array is 
# rotated in the opposite direction.

# my_join
# my_join returns a single string containing all the elements of the array, 
# separated by the given string separator. If no separator is given, an empty 
# string is used.

# my_reverse
# Write a method that returns a new array containing all the elements of the 
# original array in reverse order.

class Array
    def my_each(&prc)
        # need to find a way to iterate through the array with indices
        len = self.length
        len.times do |i|
            prc.call(self[i])
        end 
    end 

    def my_select(&prc)
        new_arr = []
        self.my_each { |ele| new_arr << ele if prc.call(ele)}
        new_arr
    end 

    def my_reject(&prc)
        new_arr = []
        self.my_each { |ele| new_arr << ele if prc.call(ele) == false }
        new_arr 
    end
    
    def my_any?(&prc)
        self.my_each { |ele| return true if prc.call(ele) }
        false 
    end
    
    def my_all?(&prc)
        self.my_each { |ele| return false if prc.call(ele) == false }
        true 
    end

    def my_flatten
        flattened = []
        self.my_each do |ele|
            if ele.is_a?(Array) == false
                flattened << ele
            else
                flattened += ele.my_flatten
            end 
        end 
        flattened
    end 

    def my_zip(*args)
        arr = []
        pushed = [] 
        self.length.times do |i|
            args.length.times do |j|
                pushed << args[j][i]
            end
            arr << [self[i], *pushed]
            pushed = []
        end 
        arr
    end 

    def my_rotate(offset=1)
        new_arr = []
        len = self.length
        if offset < 0
            offset = self.index(self[offset]) 
        elsif offset > len
            offset = offset % len
        end
        self.drop(offset) + self.take(offset)
    end 

    def my_join(sep="")
        string = ""
        self.my_each do |ele|
            string += ele + sep
        end 
        string
    end 

    def my_reverse
        reversed = []
        self.my_each do |ele|
            reversed.unshift(ele)
        end 
        reversed 
    end 
end 

# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# p [1, 2, 3].my_zip(a,b) # # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# c = [10, 11, 12]
# d = [13, 14, 15]
# p [1, 2].my_zip(a, b, c, d) # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

# a = [ "a", "b", "c", "d" ]
# p a.my_rotate         #=> ["b", "c", "d", "a"]
# p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

# a = [ "a", "b", "c", "d" ]
# p a.my_join         # => "abcd"
# p a.my_join("$")    # => "a$b$c$d"

p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
p [ 1 ].my_reverse               #=> [1]