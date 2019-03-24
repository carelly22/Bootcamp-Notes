def my_map(array, &prc)
    mapped = []

    array.each do |ele|
        mapped = << prc.call(ele)
    end 

    mapped 
end 

def my_select(array, &prc)
    selected = []

    array.each do |ele|
        if prc.call(el)
            selected << ele
        end 
    end

    selected
end 

def my_count(array, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end
    
    count
end

def my_any?(array, &prc)
    array.each do |ele| 
        if prc.call(ele) == true
            return true
        end
    end 

    false
end 

def my_all?(array, &prc)
    array.each do |ele|
        if prc.call(ele) == false
            return false
        end
    end 

    true 
end 

def my_none?(array, &prc)
    array.each do |ele|
        if prc.call(ele) == true
            return false
        end 
    end
    
    true 
end

def reverser(string, &prc)
    prc.call(string.reverse)
end 

def word_changer()
    words = sentence.split(" ")
    new_words = []

    words.each do |word|
        new_words << prc.call(word)
    end 
    
    new_words.join(" ")
end 

def greater_proc_value(prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)

    if result_1 > result_2
        return result_1
    else
        return result_2
    end  
end 

def and_selector(array, prc_1, prc_2)
    selected = []

    array.each do |ele|
        if prc_1.call(ele) && prc_2.call(ele)
            selected << el
        end
    end 

    selected 
end 

def alternating_mapper(array, prc_1, prc_2)
    mapped = []
    
    array.each_with_index do |ele, idx|
        if idx.even? 
            mapped << prc_1.call(ele)
        else
            mapped << prc_2.call(ele)
        end 
    end 

    mapped
end 