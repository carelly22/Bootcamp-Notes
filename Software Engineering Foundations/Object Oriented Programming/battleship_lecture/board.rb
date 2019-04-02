# @grid
# to create a 2D array of a given size we do
# Array.new(n) => this would create a 1D array of size n
# If you want to initialize the inner elements of that 
# array you can pass in a block as well
# create an array of size n, and make the expression the elements of 
# that array which would make them subarrays 
# this creates distinct inner arrays 

# a = Array.new(4) 
# creates an array of length 4, where every element is nil

# b = Array.new(4, "?")
# creates an array of length 4, where every element is "?"

# c = Array.new(4, Array.new(4))
# creates an array containing 4 subarrays of length 4, with elements = nil
# this method does not create distinct subarrays 
# the same array is each of the subarrays 

# to get distinct subarrays, we must pass in a block 
# d = Array.new(4) { Array.new(4) }
# creates an array containing 4 distinct subarrays, with elements = nil

class Board
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, :N) }
        @size = n * n # this is the true size of the array
    end
end