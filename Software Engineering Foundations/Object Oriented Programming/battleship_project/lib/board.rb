class Board
    attr_reader :size
    attr_accessor :grid
  def initialize(n)
    # create a new main array of size n 
    # create subarrays of size n with :N as their pre-filled values 
    @grid = Array.new(n) { Array.new(n, :N) }
    # calculate the size of the 2D array
    @size = n * n
  end 

  def [](position)
    # @grid[position[0]][position[1]]
    row, column = position
    @grid[row][column]
  end 

  def []=(position, value)
    # @grid[position[0]][position[1]] = value
    row, column = position
    @grid[row][column] = value
  end 

  def num_ships
    # need to flatten the 2D array first
    # then count the number of :S chars 
    @grid.flatten.count(:S)
  end

  def attack(pos)
    # self.grid[pos[0]][pos[1]]
    if self[pos] == :S 
        self[pos] = :H
        puts "you sunk my battleship!"
        return true
    else
        self[pos] = :X
        return false
    end 
  end 

  def place_random_ships
    # calculate 1/4 of the grid 
    ships = (@size * 0.25).to_i

    # while ship count of grid is less than 1/4
    while self.num_ships < ships
        #select a random row excluding n
        rand_row = rand(0...@grid.length)
        #select a random col excluding n
        rand_col = rand(0...@grid.length)
        # create a random position
        pos = [rand_row, rand_col]
        self[pos] = :S
    end
  end 

  def hidden_ships_grid
    hidden_ships = self.grid.map do |row|
      row.map do |ele|
        if ele == :S
          ele = :N
        else
          ele
        end
      end 
    end
    hidden_ships
  end
   
  def self.print_grid(main_array)
    main_array.each do |subarray|
        puts subarray.join(" ")
    end 
  end
  
  def cheat
    Board.print_grid(@grid)
  end 

  def print
    Board.print_grid(hidden_ships_grid)
  end  
end
