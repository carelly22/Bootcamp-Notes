class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]

    def substrings(length = nil)
        subs = []
        (0...self.length).each do |start_idx|
            (start_idx...self.length).each do |end_idx|
                sub = self[start_idx..end_idx]
                # p sub
                subs << sub
            end 
        end
        
        if length.nil?
            subs
        else
            subs.select { |str| str.length == length} 
        end 
    end 

    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"

    def caesar_cipher(num)
        new_str = ""
        alphabet = ("a".."z").to_a # quick way to set up an alphabet array


    end
end
