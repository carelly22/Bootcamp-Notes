def reverser(string, &prc)
    return prc.call(string.reverse)
end

def word_changer(string, &prc)
    sentence = string.split(" ")
    new = sentence.map { |word| prc.call(word) }
    return new.join(" ")
end

def greater_proc_value(number, prc1, prc2)
    result1 = prc1.call(number)
    result2 = prc2.call(number)
    if result1 > result2
        return result1
    else
        return result2
    end
end

def and_selector(arr, prc1, prc2)
    new_arr = []
    arr.each { |ele| new_arr << ele if (prc1.call(ele) == true && prc2.call(ele) == true) }
    new_arr
end

def alternating_mapper( arr, prc1, prc2)
    new = arr.map.with_index do |ele, idx|
        if idx % 2 == 0
            prc1.call(ele)
        else
            prc2.call(ele)
        end
    end
    new
end