require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end
    
    def print_matches(guess_code)
        p @secret_code.num_exact_matches(guess_code)
        p @secret_code.num_near_matches(guess_code)
        # can also use string interpolation
        # puts "exact matches: #{@secret_code.num_exact_matches(code)}"
        # puts "near matches: #{@secret_code.num_near_matches(code)}"
        
    end 

    def ask_user_for_guess
        puts "Enter a code"
        # possible to just pass in gets.chomp
        guess_code = Code.from_string(gets.chomp)
        print_matches(guess_code)
        @secret_code == guess_code
    end 
end
