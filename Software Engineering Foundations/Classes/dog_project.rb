class Dog
    # set the instance variables
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    # write the getter methods
    def name
        @name
    end 

    def breed
        @breed
    end 

    def age
        @age
    end 

    def favorite_foods
        @favorite_foods
    end

    # write the setter methods
    def age=(new_age)
        @age = new_age
    end

    # write instance method, bark
    def bark
        if @age > 3 # when you're within a class, you can just refer to the attributes using @attribute_name
            return @bark.upcase
        else
            return @bark.downcase
        end
    end
    
    # instance method bark, using getters
    # def bark
    #     if age > 3
    #         return @bark.upcase
    #     else
    #         return @bark.downcase
    #     end
    # end

    # write 
    def favorite_food?(item)
        @favorite_foods.map(&:downcase).include?(item.downcase)
    end 

end 
