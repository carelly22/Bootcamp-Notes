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

    # we need a print grid class method 
    # so we say self.print_grid 
    def self.print_grid(grid)
        # print each row of the grid so every 
        # element is separated by a space 
        # here we're operating over the grid arg
        # we cannot use the grid attribute because this 
        # is a class method and attributes can only be 
        # called on instances 
        # since only instances have attributes 
        grid.each do |row|
            # join each row on a space 
            puts row.join(" ")
        end 
    end 
     
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

    def attack(position)
        # we need to handle two scenarios 
        # when pos == :S, set pos = :H 
        # when pos != :S, set pos = :X 
        # we defined the [] method on the Board class 
        # when we reference self, that is an instance of Board
        # so we can use [] on self 
        if self[position] == :S 
            self[position] = :H 
            puts "you sunk my battleship!"
            return true
        else 
            self[position] = :X 
            return false 
        end 
    end 

    def place_random_ships
        # we want to set 25% of the board to ships based on 
        # the size of the board 
        # first need to calculate the number of ships we 
        # need to set 
        total_ships = @size * 0.25
        while self.num_ships < total_ships
            # we need to get random rows and random cols 
            # since we set position using both rows and cols 
            rand_row = rand(0...@grid.length)
            rand_col = rand(0...@grid.length)
            pos = [ rand_row, rand_col ]
            self[pos] = :S
        end 
    end 

    # we want to return a 2D array where every :S is replaced 
    # by :N
    # we should not mutate the original grid 
    # if grid is a 2D array, we can map over the array
    # here we use a double map
    # we use map here since we're not supposed to mutate the 
    # original grid 
    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S 
                    :N 
                else 
                    ele
                end 
            end 
        end 
    end 

    def cheat 
        Board.print_grid(@grid)
    end 

    def print 
        Board.print_grid(self.hidden_ships_grid)
    end 
end