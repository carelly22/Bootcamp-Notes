class Hangman
    def try_guess(char)
        if self.already_attempted?(char)
            puts "that has already been attempted"
            return false
        end
        
        @attempted_chars << char
        matches = self.get_matching_indices(char)
        self.fill_indices(char, matches)
        @remaining_incorrect_guesses -= if matches.empty?
        true 
    end
    
    def ask_user_for_guess
        puts "Enter a char:"
        char = gets.chomp
        self.try_guess(char)
    end
    
    def win?
        if @guess_word.join("") == @secret_word
            puts "WIN"
            return true
        else
            return false
        end 
    end

    def lose?
        if @remaining_incorrect_guesses == 0
            print "LOSE"
            return true
        else 
            return false
        end 
    end 

    def game_over?
        if self.win? || self.lose?
            puts @secret_word
            return true
        else 
            return false 
        end 
    end
end 