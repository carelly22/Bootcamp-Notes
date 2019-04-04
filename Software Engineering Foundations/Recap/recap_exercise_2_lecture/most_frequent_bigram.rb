# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.

# use a counter hash

def most_frequent_bigram(str)
    counts = Hash.new(0)
    (0...str.length).each do |i|
        bigram = str[i..i+1]
        counts[bigram] += 1
    end

    # sort_by is a method to sort the hash
    # returns a sorted array with subarrays
    # of keys and values

    sorted = counts.sort_by { |k,v| v} 

    # the very last sub-array has the maximal value
    sorted.last[0] 
end 