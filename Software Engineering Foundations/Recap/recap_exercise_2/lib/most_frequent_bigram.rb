# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    counter = Hash.new(0)

    str.each_char.with_index do |char1, idx1|
        str.each_char.with_index do |char2, idx2|
            if (idx2 - idx1) == 1
                counter[char1+char2] += 1
            end 
        end 
    end 
    counter.key(counter.values.max)
end

p most_frequent_bigram("thethrillofit")