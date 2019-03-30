class Code

    POSSIBLE_PEGS = {
        "R" => :red,
        "G" => :green,
        "B" => :blue,
        "Y" => :yellow
    }

    attr_reader :pegs

    def self.valid_pegs?(chars)
        # the entire call of all will return true only when
        # every char returns true 
        chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
    end

    # a method like self.random is called a factory method
    # because it returns an instance of the class 
    def self.random(length)
        random_pegs = []
        length.times { random_pegs << POSSIBLE_PEGS.keys.sample}
        Code.new
    end 

    def self.from_string(string)
        Code.new(string.split(""))
    end 

    def initialize
        if Code.valid_pegs?(char)
            @pegs = chars.map { |char| char.upcase }
            # can also be a bit fancier
            # @pegs = chars.map(&:upcase)
        else 
            raise "pegs are invalid"
        end 
    end

    def [](index)
        @pegs[index]
    end 

    def length
        @pegs.length
    end 

    def num_exact_matches(guess_code)
        count = 0
        # iterating through the indices of the guess_code
        (0...guess_code.length).each do |i|
            # when we reference @pegs here, that's referring to the 
            # code instance on the left
            count += 1 if guess_code[i] == @pegs[i]
            # can also write 
            # if guess_code[i] == self[i]
        end
        
        count 
    end 

    def num_near_matches(guess_code)
        count = 0

        (0...guess_code.length).each do |i|
        # if I have not an exact match and my guess code peg
        # is anywhere inside of my peg array
            if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
                count += 1
            end 
        end 
    end 

    def ==(other_code)
        self.pegs == other_code.pegs
    end 

end