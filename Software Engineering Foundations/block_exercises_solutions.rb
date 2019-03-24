# solution 1 - evens
def select_even_nums(nums)
    nums.select { |num| num % 2 == 0}
end

# solution 2 - evens
def select_even_nums(num)
    nums.select { |num| num.even? }
end

# solution 3 - evens
def select_even_nums(num)
    nums.select(&:even?)
end 

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
    array.count { |subarr| subarr.sum > 0 }
end

def aba_translate(word)
    vowels = "aeiou"
    new_word = ""

    word.each_char do |char|
        if vowels.include?(char)
            new_word = char + "b" + char
        else 
            new_word += char 
        end
    end

    new_word 
end

def aba_array(array)
    words.map { |word| aba_translate(word) }
end 

def all_words_capitalized?(words)
    words.all? { |word| word.capitalize == word }
    # .capitalize is a built in method to capitalize 
    # strings ie. "ALVIN" => "Alvin"
end

def no_valid_url?(urls)
    valid_endings = [".com", ".net", ".io", ".org"] 
    # use the builtin method .end_width? to check if 
    # the urls end with any of the endings
    urls.none? do |url|
        valid_endings.any? { |ending| url.end_width?(ending) }
    end
end