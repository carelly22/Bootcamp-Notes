def palindrome?(str)
    reversed = ""
    i = str.length - 1
    while i >= 0
        reversed += str[i]
        i -= 1
    end
    reversed == str
end

print palindrome?("tot") # true
puts
print palindrome?("racecar") # true
puts
print palindrome?("madam") # true
puts
print palindrome?("aa") # true
puts
print palindrome?("a") # true
puts
print palindrome?("cat") # false
puts
print palindrome?("greek") # false
puts 
print palindrome?("xabcx") # false
puts

def substrings(str)
    substrings = []
    str.each_char.with_index do |char1, i1|
        str.each_char.with_index do |char2, i2|
            if i2 >= i1
                substrings << str[i1..i2]
            end
        end
    end
    substrings
end

print substrings("jump") # ["j", "ju", "jum", "jump", "u", "um", "ump", "m", "mp", "p"]
puts
print substrings("abc") #  ["a", "ab", "abc", "b", "bc", "c"]
puts
print substrings("x") # ["x"]
puts

def palindrome_substrings(str)
    substrings = substrings(str)
    palindromes = []
    substrings.each do |substring|
        if palindrome?(substring) && substring.length > 1
            palindromes << substring
        end
    end
    palindromes
end

print palindrome_substrings("abracadabra") # ["aca", "ada"]
puts
print palindrome_substrings("madam") #  ["madam", "ada"]
puts
print palindrome_substrings("taco") # []
puts