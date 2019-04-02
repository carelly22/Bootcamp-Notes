class Player
    def get_move
        puts "enter a position with coordinates separated with a space like `4 7`"
        gets.chomp.split(" ").map(&:to_i)
        # we're getting input from the user 
        # then using .chomp to remove the ending \n char
        # then splitting the string input on a space separating the 
        # chars
        # then map over the elements to convert them from strings 
        # to integers 
    end
end