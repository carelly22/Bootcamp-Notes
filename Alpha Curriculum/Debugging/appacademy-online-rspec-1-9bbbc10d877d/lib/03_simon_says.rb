require "byebug"

def echo(str)  
    return str
end 

def shout(str)
    return str.upcase
end 

def repeat(str, repeat=1)
    added_string = " " + str
    return str + added_string if repeat == 1
    
    i = 0
    while i < repeat-1
        str = str + added_string
        i += 1
    end 

    return str
end 

def start_of_word(word, num)
    return word[0...num]
end 

def first_word(str)
    return str.split(" ")[0]
end 

def titleize(str)
    words = str.split(" ")
    little_words = ["the", "and", "over"]
    
    new_str = []
    words.each_with_index do |word, idx|
        if !(little_words.include?(word))
            new_str << word.capitalize
        elsif (little_words.include?(word) && idx == 0)
            new_str << word.capitalize
        else 
            new_str << word
        end 
    end 

    return new_str.join(" ")
end 

