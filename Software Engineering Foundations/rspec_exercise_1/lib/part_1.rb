def average(num1, num2)
    return (num1 + num2)/ 2.0
end

print average(4, 8) # 6
puts
print average(5, 10) # 7.5
puts 

def average_array(arr)
    sum = arr.inject { |num1, num2| num1 + num2 }
    return sum / arr.length.to_f
end

print average_array([2, 4, 6])
puts
print average_array([3, -4, 21, 8])
puts
print average_array([5, 10])
puts

def repeat(str, num)
    return str * num
end

print repeat("happy", 2)
puts
print repeat("Work", 5)
puts
print repeat("whoa", 0)
puts

def yell(str)
    return str.upcase + "!"
end

print yell("hello")
puts
print yell("goodBYE")
puts

def alternating_case(str)
    sentence = str.split(" ")
    alternate = sentence.map.with_index do |word, i|
        if i.even? 
            word.upcase
        else
            word.downcase
        end
    end
    return alternate.join(" ")
end

print alternating_case("code never lies, comments sometimes do.")
puts
print alternating_case("HEY PROGRAMMERS")
puts