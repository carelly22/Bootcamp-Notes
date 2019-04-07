# The method below estimates how much money your child will 
# have when they retire, based on your age.

# Calculate how much money they'll have by multiplying by 
# the number of years they have left until retirement.
# Estimate your child's current bank account by squaring their age.
# Estimate your child's age by dividing your age by two.
# Calculate how many years your child has left until they retire at age 65

# def return_number(a)
#     ((a / 2)**2) * (65 - (a / 2))
# end

def retirement_money(parent_age)
    child_age = parent_age / 2
    child_bank_account = child_age * child_age
    years_until_retirement = 65 - child_age

    money_when_retired = child_bank_account * years_until_retirement
end 