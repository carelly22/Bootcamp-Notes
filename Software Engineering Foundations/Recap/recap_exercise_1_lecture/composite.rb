# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false

# similar to the prime exercise but composites are the opposite of prime numbers
# easy problem, but easy to overthink

def composite?(num)
    (2...num).each do |i|
        if num % i == 0 
            return true
        end 
    end
    false  
end 