# attr_reader is a shortcut for defining getter methods

# Syntactic Sugar = shortcuts or elegant code 

class Person
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    # want to check if two people have the same last name
    def ==(other_person)
        self.last_name == other_person.last_name
    end 

    def >(other_person)
        self.age > other_person.age
    end 
end

person_1 = Person.new("Jane", "Doe", 20)
person_2 = Person.new("John", "Doe", 18)

#p person_1.==(person_2) 
# this is not clean or clear ruby code
# to the left of the equlity, this is the object calling the method
# once you hop into the execution for the equality method 
# self is going to refer to person 1; self will always refer to the 
# thing on the left of the equality symbol

p person_1 == person_2 # this is much cleaner ruby code; syntactic sugar 
person_3 = Person.new("John", "Wayne", 18)

p person_2 == person_3 # returns false since you're comparing two different strings

p person_1 > person_2 # true

p person_2 > person_1 # false