# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    lcm = (num_1 * num_2) / gcd(num_1, num_2)
    lcm
end

def gcd(a,b)
    if (a <=> b) == -1
        rem = b % a
        if rem == 0
            return a 
        else
            gcd(rem, a)
        end 
    else
        rem = a % b
        if rem == 0
            return b 
        else 
            gcd(rem, b)
        end 
    end
end

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


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each do |k,v|
            new_hash[v] = k
        end
        new_hash 
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)

    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)

    end
end
