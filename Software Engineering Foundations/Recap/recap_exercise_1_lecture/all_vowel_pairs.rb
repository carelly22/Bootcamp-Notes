# we want to start by generating pairs from the array
# we have to use nested loops for this pattern
# once all possible pairs are created, we ask the question: 
# does this pair contain ALL of the elements of our vowel array?
# we also need to avoid duplicate pairs, so use array.each_with_index

def all_vowel_pairs(words)
    vowels = ["a", "e", "i", "o", "u"]
    pairs = []

    words.each_with_index do |word1, idx_1|
        words.each_with_index do |word2, idx_2|
            pair = word1 + " " + word2 
            if idx_2 > idx_1 && vowels.all? { |vow| pair.include?(vow) }
                pairs << pair
            end 
        end 
    end 
    pairs 
end 