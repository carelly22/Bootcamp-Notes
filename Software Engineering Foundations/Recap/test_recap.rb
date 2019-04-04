def all_vowel_pairs(words)
    vowels = ["a", "e", "i", "o", "u"]

    count = 0

    all_vowels = []

    words.each_with_index do |word1, idx1|
        words.each_with_index do |word2, idx2|
            vowels.each do |char|
                #puts words[i] + words[i+1]
                if (word1 + word2).include?(char) && idx2 > idx1
                    count += 1
                end
                puts word1 + word2
                puts count 

            end
            if count == 5
                contains = word1 + " " + word2
                all_vowels << contains
            end
            count = 0
        end 
    end

    all_vowels
end

p all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])

# class Hash
#     # Write a method, Hash#my_select, that takes in an optional proc argument
#     # The method should return a new hash containing the key-value pairs that return
#     # true when passed into the proc.
#     # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
#     #
#     # Examples:
#     #
#     # hash_1 = {x: 7, y: 1, z: 8}
#     # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
#     #
#     # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
#     # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
#     # hash_2.my_select                            # => {4=>4}
#     def my_select(&prc)
#         new_hash = {}
#         prc ||= Proc.new { |k,v| k == v}
#         self.each { |k,v| new_hash[k] = v if prc.call(k,v) == true}
#         new_hash
#     end
# end

# hash_1 = {x: 7, y: 1, z: 8}
# p hash_1.my_select { |k, v| v.odd? } # => {x: 7, y: 1}

# hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
# p hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
# p hash_2.my_select                            # => {4=>4}


# class String
#     # Write a method, String#substrings, that takes in a optional length argument
#     # The method should return an array of the substrings that have the given length.
#     # If no length is given, return all substrings.
#     #
#     # Examples:
#     #
#     # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
#     # "cats".substrings(2)  # => ["ca", "at", "ts"]
#     def substrings(length = nil)

#     end


#     # Write a method, String#caesar_cipher, that takes in an a number.
#     # The method should return a new string where each char of the original string is shifted
#     # the given number of times in the alphabet.
#     #
#     # Examples:
#     #
#     # "apple".caesar_cipher(1)    #=> "bqqmf"
#     # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
#     # "zebra".caesar_cipher(4)    #=> "difve"
#     def caesar_cipher(num)
#         new_str = ""
#         # create an alphabet array
#         alphabet = ("a".."z").to_a

#         self.each_char do |char|
#             old_idx = alphabet.index(char)
#             puts old_idx
#             new_idx = old_idx + num
#             puts new_idx
#             puts "------"
#             new_pos = alphabet[new_idx]
#             new_str += new_pos
#             # puts new_str
#         end 
#         puts new_str
#     end
# end

# str = String.new("apple")
# str.caesar_cipher(1)

# class String
#     # Write a method, String#substrings, that takes in a optional length argument
#     # The method should return an array of the substrings that have the given length.
#     # If no length is given, return all substrings.
#     #
#     # Examples:
#     #
#     # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
#     # "cats".substrings(2)  # => ["ca", "at", "ts"]
#     def substrings(length = nil)
#         substrings = []
#         self.each_char do |char|
            
#         end         
#     end
# end 

# def substrings(string)
#     substrings = []
#     len = string.length 

#     string.each_char.with_index do |char, idx|
#         i = 0
#         while i < len
#             if idx <= i
#                 substrings << string[idx..i]
#             end 
#             i += 1
#             p string[idx..i]
#             p "----"
#             p "#{idx}, #{i}"
#         end 
        
#     end 

#     substrings 
# end 

# p substrings("cats")
# class String
#     def substrings(length = nil)
#         substrings = []
#         len = self.length 

#         self.each_char.with_index do |char, idx|
#             i = 0
#             while i < len
#                 if idx <= i
#                     substrings << self[idx..i]
#                 end 
#                 i += 1
#             end 
            
#         end 
#         if length == nil
#             return substrings
#         else 
#             substrings.select { |substr| substr.length == length} 
#         end 
#     end 
# end 

# str = String.new("cats")
# p str.substrings(2)
# p str.substrings