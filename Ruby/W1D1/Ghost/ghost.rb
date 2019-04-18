require "set"

class Ghost
    
    attr_accessor :players, :fragment, :dictionary
    
    def initialize(*players)
        @players = players
        @fragment = "" 
    end 

    def dictionary
        @dictionary ||= Set.new(File.readlines("test_dictionary.txt").map { |word| word.chomp } )
    end
    
    def play_round
    end 

    def current_player
    end 

    def previous_player
    end 

    def next_player!
    end
    
    def take_turn(player)
    end
    
    def valid_play?(string)
        alphabet = ["a".."z"].to_a
        new_fragment = fragment + string
        if alphabet.include?(string) && !(dictionary.include?(new_fragment))
            return true
        else 
            return false
        end 
    end 
end 


ghost1 = Ghost.new(3)
p ghost1
p ghost1.dictionary
p ghost1
p ghost1.dictionary.include?("aardvark")