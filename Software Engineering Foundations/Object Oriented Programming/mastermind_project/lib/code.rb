class Code
  attr_reader :pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase)} # returns true or false
  end 

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map { |peg| peg.upcase }
    else 
      raise "invalid pegs"
    end 
  end 

  def self.random(length)
    Code.new(Array.new(length) { POSSIBLE_PEGS.keys.sample })
  end 

  def self.from_string(string)
    chars = string.split("")
    Code.new(chars)
  end 

  def [](index)
    @pegs[index]
  end 

  def length
    @pegs.length
  end 

  def num_exact_matches(guess)   
    matches = 0
    
    guess.pegs.each_with_index do |ele,i|
      matches += 1 if guess[i] == @pegs[i] 
    end 

    matches
  end
  
  def num_near_matches(guess)
    near_matches = 0
    
    guess.pegs.each_with_index do |ele,i|
      near_matches += 1 if guess[i] != @pegs[i] && @pegs.include?(ele)
    end 

    near_matches
  end 

  def ==(other_code)
    self.pegs == other_code.pegs
  end 
end
