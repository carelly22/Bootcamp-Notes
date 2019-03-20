def partition(arr, num)
    partitioned = []
    smaller = []
    greater = []
    arr.each do |ele|
        if ele < num
            smaller << ele
        else 
            greater << ele
        end
    end
    partitioned.push(smaller, greater)
    partitioned
end

print partition([11, 5, 13, 2, 3], 7)
puts 
print partition([1, 2, 4, 3, 5, 7], 5)
puts 
print partition([1, 2, 4, 3], 0)
puts

def merge(hash1, hash2)
    merged = {}
    hash1.each do |key, val|
        merged[key] = val
    end
    hash2.each do |key2, val2|
        merged[key2] = val2
    end
    merged
end

hash_1 = {"a"=>10, "b"=>20}
hash_2 = {"c"=>30, "d"=>40, "e"=>50}

print merge(hash_1, hash_2) # {"a"=>10, "b"=>20, "c"=>30, "d"=>40, "e"=>50}
puts 

hash_1 = {"a"=>10, "b"=>20}
hash_2 = {"c"=>30, "b"=>7}
print merge(hash_1, hash_2) # {"a"=>10, "b"=>7, "c"=>30}
puts 

def censor(sentence, arr)
    words = sentence.split(" ")
    words.each_with_index do |word, i|
        if arr.include?(word.downcase)
            replace_vowel(word)
        end
    end
    censored = words.join(" ")
    censored
end

def replace_vowel(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            word[i] = "*"
        end
    end
    word
end

print censor("Gosh darn it", ["gosh", "darn", "shoot"])
puts
print censor("SHUT THE FRONT DOOR", ["door"])
puts

def power_of_two?(num)
    (0...num).each do |n|
        if 2**n == num
            return true
        end
    end
    false
end

print power_of_two?(16)
puts
print power_of_two?(32)
puts
print power_of_two?(64)
puts
print power_of_two?(1)
puts 
print power_of_two?(6)
puts
print power_of_two?(7)
puts
print power_of_two?(28)
puts
print power_of_two?(100)
puts