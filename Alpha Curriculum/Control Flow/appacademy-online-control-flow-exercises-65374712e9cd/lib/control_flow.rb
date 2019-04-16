# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
    str.each_char do |char|
        str.delete!(char) if char == char.downcase
    end
    str 
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
    length = str.length
    lower_idx = (length / 2)-1
    upper_idx = (length / 2)
    if length.even?
        return str[lower_idx..upper_idx]
    else 
        return str[upper_idx]
    end 
end

# Return the number of vowels in a string.
VOWELS = %w[a e i o u]
def num_vowels(str)
    num_vowels = 0
    str.each_char do |char|
        if VOWELS.include?(char)
            num_vowels += 1
        end 
    end

    num_vowels 
end

# Return the factorial of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
    return 1 if num == 1

    factorial = 1
    (1..num).each do |ele|
        factorial *= ele
    end
    
    factorial
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
    new_str = ""
    arr.each_with_index do |ele, idx|
        if idx < arr.length-1
            new_str += ele + separator
        elsif idx == arr.length-1
            new_str += ele
        end 
    end 
    new_str 
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
    new_str = ""
    # iterate through the string
    str.each_char.with_index do |char, idx| 
        # if str[idx] is even, make it uppercase
        if idx.even?
            new_str += char.downcase
        # if str[idx] is odd, make it lowercase
        elsif idx.odd?
            new_str += char.upcase
        end  
    end
    new_str     
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
    # iterate through each element of the string
    words = str.split(" ")
    words.map do |word|
        # if ele > 5 chars, reverse it 
        if word.length >= 5
            word.reverse!
        # else leave it alone
        else
            word
        end
    end
    words.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
    # create an array from 1 to n inclusive 
    nums = []
    
    # iterate through the range array
    (1..n).each do |num|
        if num % 3 == 0 && !(num % 5 == 0)
            nums << "fizz"
        elsif num % 5 == 0 && !(num % 3 == 0)
            nums << "buzz"
        elsif num % 3 == 0 && num % 5 == 0
            nums << "fizzbuzz"
        else
            nums << num
        end
    end

    nums  
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
    return arr.reverse!
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num) 
    # if num == 1 return false
    return false if num == 1

    # else check if num's factors divide num
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end 

    return true 
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
    factors = []
    (1..num).each do |factor|
        if num % factor == 0
            factors << factor
        end 
    end
    
    return factors 
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
    prime_factors = []

    (2..num).each do |factor|
        if num % factor == 0 && prime?(factor)
            prime_factors << factor
        end
    end 

    prime_factors
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
    return prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
    hash1 = { "even"=> 0, "odd"=> 0}
    hash2 = {}
    
    arr.each_with_index do |num, idx|
        if num.odd? 
            hash1["odd"] += 1
            hash2[num] = "odd"
        elsif num.even?
            hash1["even"] += 1
            hash2[num] = "even"
        end 
    end
    # puts hash1
    # puts hash2
    # puts hash1["even"]

    if hash1["even"] > hash1["odd"]
       selected = hash2.find { |key, value| value == "odd" }
       return selected[0]
       
    elsif hash1["odd"] > hash1["even"]
        selected = hash2.find { |key, value| value == "even" }  
        return selected[0]
    end
end

# have counter hash
# check to see which value is greater
