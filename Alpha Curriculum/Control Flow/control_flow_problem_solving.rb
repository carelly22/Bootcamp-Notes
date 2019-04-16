def two_sum(array, target)

    # make starting point first element
    idx1 = 0

    while idx1 < array.length - 1 
        # sum starting point with every other element
        idx2 = idx1 + 1
        while idx2 < array.length
            # if sum equals target, return true
            sum = array[idx1] + array[idx2]
            return true if sum == target
            idx2 += 1
        end 
        # increment starting point until starting point is second to last
        idx1 += 1
    end
    
    # if no sum is found, return false
    return false    
end 