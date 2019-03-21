def partition(array, number)
    less = []
    greater = []

    array.each do |ele|
        if ele < number 
            less << ele
        else 
            greater << ele
        end
    end

    [less, greater]
end

def merge(hash1, hash2)
    new_hash = {}
    hash1.each { |k, v| new_hash[k] = v}
    hash2.each { |k, v| new_hash[k] = v}
    new_hash
end

def censor(sentence, curse_words)
    words = sentence.split(" ")
    new_words = words.map do |word|
        if curse_words.include?(word.downcase)
            star_vowels(word)
        else
            word
        end
    end
    new_words.join(" ")
end

# helper function
def star_vowels(string)
    vowels = "aeiou"
    new_str = ""
    string.each_char do |char|
        if vowels.include?(char.downcase)
            new_str += "*"
        else
            new_str += char
        end
    new_str
end

# good method for solving this problem 
def power_of_two?(number)
    product = 1
    while product < number 
        product *= 2
    end

    product == number 
end

# something is indeed a power of two, keep multiplying
# it and at some point it will be perfectly equal
# to the target case

# easy way to solve this 
# def palindrome?(string)
#     string == string.reverse
# end

# pattern to check corresponding characters in our 
# string
# 0, -1
# 1, -2
# 2, -3

def palindrome?(string)
    string.each_char.with_index do |char, i|
        if string[i] != string[i-1]
            return false
        end 
    end

    true 
end

def substrings(string)
    subs = []
    (0...string.length).each do |start_idx|
        (start_idx...string.length).each do |end_idx|
            subs << string[start_idx..end_idx]
        end
    end  
    subs  
end 

def palindrome_substrings(string)
    substrings(string).select{ |substr| palindrome?(substr) && substr.length > 1 }
end