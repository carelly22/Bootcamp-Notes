# write a method that accepts an array of words and when all words are 
# properly capitalized, it returns true

def all_words_capitalized?(words)
    new = words.all? { |word| word == word[0].upcase + word[1..-1].downcase }
    return new
end

# test cases
# print all_words_capitalized?(["Hello", "World"])
# puts
# print all_words_capitalized?(["Follow", "the", "Yellow", "Brick", "Road"])

# define a method that accepts an array of urls and returns true when none of 
# the urls end in ".com", ".net", ".io", or ".org"

def no_valid_url?(arr)
    arr.none? { |url| url.include?(".com") || url.include?(".net") || url.include?(".io") || url.include?(".org") }
end

puts

# write a method that takes in an array of student hashes and returns true
# when at least one student has an average grade of 75 or higher 

def any_passing_students?(students)
    students.any? do |student|
        (student[:grades].sum / student[:grades].length) > 75
    end
end

# test case
# students_1 = [
#     { name: "Alvin", grades: [70, 50, 75] },
#     { name: "Warlin", grades: [80, 99, 95] },
#     { name: "Vlad", grades: [100] },
# ]