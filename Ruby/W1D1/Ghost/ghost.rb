# load "dictionary.txt"
# require_relative "./dictionary.txt"
require "set"

s = Set[]
File.foreach( "dictionary.txt" ) do |line|
  s << line.chomp
end

def Ghost
    dictionary = Set[]
    File.foreach( "dictionary.txt" ) do |line|
        dictionary << line.chomp
    end
    
    def initialize(players, fragment)
        @dictionary = dictionary
        @players = players
        @fragment = fragment 
    end 

    def dictionary
        @dictionary ||= dictionary
    end 
end 

# puts s
# puts s.include?("net")