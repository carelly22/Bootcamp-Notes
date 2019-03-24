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

