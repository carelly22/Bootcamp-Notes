class Hangman
    def try_guess(char)
        if self.already_attempted?(char)
            puts "that has already been attempted"
            return false
        end
        
        @attempted_chars << char
        matches = self.get_matching_indices(char)
        self.fill_indices(char, matches)
        true 
    end 
end 