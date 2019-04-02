require_relative "board"
require_relative "player"

class Battelshio
    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)       
        @remaining_misses = @board.size * 0.5 
    end

    def start_game
        @board.place_random_ships
        puts "Number of ships: #{@board.num_ships}"
        @board.print 
    end 

    # when there are no more remaining misses
    # print "you lose!"
    def lose?
        if @remaining_misses <= 0
            puts "you lose!"
            return true # answering the question, did I lose?
        else
            return false
        end 
    end
    
    # when there are no ships left on the board, print 
    # "you win!"
    def win?
        if @board.num_ships == 0
            puts "you win!"
            return true 
        else
            return false 
        end 
    end
    
    # lose? and win? are instance methods 
    # so we're going to use self.win? and self.lose?
    # is THIS game of battleship won or lost?
    def game_over?
        if self.lose? || self.win?
            return true
        else 
            return false
        end 
    end
    
    def turn
        pos = @player.get_move 
        if @board.attack(pos) == false
            @remaining_misses -= 1 
        end 
        @board.print 
        puts "Remaining misses: #{@remaining_misses}"
    end 
end