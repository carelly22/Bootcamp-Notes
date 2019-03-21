def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end

def vowel_counts(string)
    counts = Hash.new(0)
    vowels = "aeiou"

    string.each_char do |char|
        if vowels.include?(char.downcase)
            counts[char] += 1
        end
    end

    counts
end

def caesar_cipher(message, n)
    # quick way to generate an alphabet array
    # this creates an array from ele1 to ele2 (range)
    alphabet = ("a".."z").to_a 
    new_message = ""
    
    message.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + n
            new_message += alphabet[new_index]
        else
            new_message += char
        end
    end

    new_message
end