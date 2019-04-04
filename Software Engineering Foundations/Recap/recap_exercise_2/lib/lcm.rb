# If a<b, exchange a and b.
# Divide a by b and get the remainder, r. If r=0, report b as the GCD of a and b.
# Replace a by b and replace b by r. Return to the previous step.

# def gcd(a,b)
#     if (a <=> b) == -1
#         rem = b % a
#     else
#         rem = a % b 
#     end
#     if rem == 0 
#         return b
#     else
#         gcd(b, rem) 
#     end
# end 

def least_common_multiple(num_1, num_2)
    return (num_1 * num_2) / gcd(num_1, num_2)
end

def gcd(a,b)
    if (a <=> b) == -1
        rem = b % a
        if rem == 0
            return a 
        else
            gcd(rem, a)
        end 
    else
        rem = a % b
        if rem == 0
            return b 
        else 
            gcd(rem, b)
        end 
    end
end

p gcd(7,21)
27 % 7 == 0