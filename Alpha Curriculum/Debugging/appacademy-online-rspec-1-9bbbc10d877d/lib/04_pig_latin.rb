def translate(str)
    vowels = ["a", "e", "i", "o", "u"]
    str = str.split(" ")
    
    new_str = []
    str.each_with_index do |word, idx|

        split = word.split("")
        
        first_vowel = split.index { |char| vowels.include?(char)}

        if split[first_vowel] == "u" && word[first_vowel-1] == "q"
            first_vowel += 1
        end

        if first_vowel == 0
            word << "ay"
            new_str << word
        elsif first_vowel > 0
            word = word[first_vowel..-1] + word[0...first_vowel] + "ay"
            new_str << word
        end

    end
    
    return new_str.join(" ")
end 

