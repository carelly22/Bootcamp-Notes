def add(num1, num2)
    return num1 + num2
end 

def subtract(num1, num2)
    return num1 - num2
end 

def sum(arr)
    return 0 if arr.empty? 
    return arr.inject { |accum, num| accum + num }
end 

def multiply(arr)
    return arr.inject { |accum, num| accum * num }
end

def power(base, exp)
    return 1 if exp == 0

    base * power(base, exp-1)
end 

def factorial(num)
    return 1 if num == 0 || num == 1
    
    num * factorial(num-1)
end 