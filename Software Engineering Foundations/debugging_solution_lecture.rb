def prime?(num)
    return false if num < 2

    (2...num).none? { |i| num % i == 0 }
end

# prime?(7) # => true
# prime?(12) # => false

def largest_prime_factor(num)
    # downto iterates from your given number down to your endpoint
    num.downto(2) do |factor|
        if num % factor == 0 && prime?(factor)
            return factor
        end
    end
end

def unique_chars?(string)
    already_seen = []

    string.each_char do |char|
        if already_seen.include?(char)
            return false
        end 
        already_seen << char
    end

    true
end

def dupe_indices(array)
    # you want to make sure that every value of the hash is a unique array
    # need to use a block
    # if you just used Hash.new([]) this would be cause every value in the 
    # hash to be the same array 
    indices = Hash.new { |h, k| h[k] = [] }
    array.each_with_index do |ele, i|
        indices[ele] << i  
    end
    # you can use .select on a hash as well
    indices.select { |ele ,array| array.length > 1 }
end

p dupe_indices(["a", "b", "b"])

def ele_count(arr)
    count = Hash.new(0)

    arr.each { |ele| count[ele] += 1}

    count
end 

# ele_count["cat", "cat", "dog"] # => {"cat"=2, "dog"=1}

def ana_array(arr_1, arr_2)
    count_1 = ele_count(arr_1)
    count_2 = ele_count(arr_2)
    count_1 == count_2
    # we can do the above comparison because we don't care about the order
    # of our key-value pairs in hashes
end