def hipsterfy(word)
    vowels = "aeiou"
    arr = []
    chars = word.split("")
    return word if chars.none? { |char| vowels.include?(char)}
    
    chars.each_with_index do |char, i|
        if vowels.include?(char)
            arr << i
        end
    end 
    word[arr.max] = ""
    word
end

# def hipsterfy(word)
#     chars = word.split("")

#     return word if chars.none? { |char| vowels.include?(char)}
# end

print hipsterfy("tonic") # tonc
puts
print hipsterfy("panther") # panthr
puts
print hipsterfy("swimming") # swimmng
puts
# print hipsterfy("rhythm") # rhythm
# puts
# print hipsterfy("my") # my

def vowel_counts(str)
    hash = Hash.new(0)
    vowels = "aeiou"
    string = str.downcase

    string.each_char do |char|
        if vowels.include?(char)
            hash[char] += 1
        end
    end
    hash
end

print vowel_counts("code bootcamp")
puts
print vowel_counts("williamsburg bridge")
puts
print vowel_counts("WILLIAMSBURG bridge")
puts 

def caesar_cipher (message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""

    message.each_char do |char|
        if alphabet.include?(char)
            final = alphabet.index(char) + n
            if final > 25
                new_str += alphabet[final%26]            
            else
                new_str += alphabet[final]
            end
        else
            new_str += char
        end
    end
    new_str
end

print caesar_cipher("apple", 1) # "bqqmf"
puts
print caesar_cipher("apple", 2) # "crrng"
puts
print caesar_cipher("hello", 5) # "mjqqt"
puts
print caesar_cipher("zebra", 4) # "difve"
puts
print caesar_cipher("whoa", 26) # "whoa"
puts
print caesar_cipher("whoa", 52) # "whoa"
puts
print caesar_cipher("123 _-!?@%", 3) # "123 _-!?@%"
puts
print caesar_cipher("hello world!", 1) # "ifmmp xpsme!"
puts
print caesar_cipher("welcome to week 3, day 1", 2) # "ygneqog vq yggm 3, fca 1"