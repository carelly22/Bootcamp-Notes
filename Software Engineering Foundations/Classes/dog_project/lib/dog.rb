# create a Dog class and various instance and class methods

class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end 

    def age=(new_age)
        @age = new_age
    end

    def age
        @age
    end

    def bark
        if @age > 3
            return @bark.upcase
        else 
            return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end
   
    def favorite_food?(string)
        @favorite_foods.include?(string.capitalize)
    end
end

dog_1 = Dog.new("Fido", "mutt", 5, "woof", ["apples", "carrots", "peanut butter"])
p dog_1.favorite_foods
p dog_1.favorite_food?("apples")
p dog_1.age
p dog_1.bark
dog_1.age = 2
p dog_1.age
p dog_1.bark
