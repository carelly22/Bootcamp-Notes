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
    attr_reader :size
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, :N) }
        @size = n * n # this is the true size of the array
    end

    def [](position)
        # we want to return the element of the grid at the given position
        # position is a pair of indices 
        # we know that position is an array of two elements 
        # the first element will become the row variable, and the second 
        # element will become the column variable
        row, col = position 
        @grid[row][col]
    end 

    def []=(position, val)
        row, col = position
        @grid[row][col] = value
    end 

    def num_ships
        # we just want to iterate through our grid and 
        # count the number of :S (S symbols) 
        # what makes this a bit awkawrd is that we have a 2D grid 
        # we can turn the 2D array into a 1D array 
        @grid.flatten.count { |ele| ele == :S }
        # .count is an array method 
        # you can pass in a block of code
        # when the block returns true, then it's going to 
        # increment like a hidden count 
        # at the end it will return the total count 
        # .coount only works on 1D arrays
    end     
end