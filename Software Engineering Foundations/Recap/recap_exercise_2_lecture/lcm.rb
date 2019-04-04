def least_common_multiple(num_1, num_2)
    # we want to target the smallest number that is a multiple
    # of both numbers 
    # we do num1*num2 because the product of two numbers is 
    # guaranteed to be a multiple of both
    # iterating up to num1*num2 in order to get a potential
    # smaller multiple
    (1..num1*num2).each do |i|
        return i if i % num_1 == 0 && i % num_2 == 0
    end 
end 