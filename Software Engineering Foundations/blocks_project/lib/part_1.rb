# write a method that takes in an array and returns an array containing
# only even numbers

def select_even_nums(arr)
    arr.select(&:even?)
end

# write a method that takes in an array of dog hashes and returns 
# an array containing the dogs that are older than 2 years 

def reject_puppies(arr)
    dogs = arr.reject do |dog|
        dog["age"] <= 2
    end
    dogs
end

# write a method that accepts a 2D array and returns the number of subarrays
# whose elements sum to a positive quantity

def count_positive_subarrays(arr)
    arr.count { |subarr| (subarr.sum) > 0 }
end 

# write a method that accepts a word string and transforms the word by
# pytting a "b" after every vowl and adding that same vowel

def aba_translate(string)
    new_string = ""
    vowels = "aeiou"
    string.each_char do |char|
        if vowels.include?(char)
            new_string += char + "b" + char
        else 
            new_string += char
        end
    end
    new_string
end

# write a method that accepts an array of words and returns a new array
# where every word has been "aba translated"

def aba_array(arr)
    aba = arr.map { |word| aba_translate(word) }
    aba
end

# test case
# print aba_array(["cat", "dog", "butterfly"])
