require_relative "./cat.rb"
require_relative "./Other_Animals/dog.rb"
# require_relative is a method which takes in a string
# this string is the relative path to the file you want to access

class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end 

    def check_in(guest)
        @guests << guest 
    end 
end 

hotel = PetHotel.new("Animal Inn")

cat_1 = Cat.new("Sennacy")
cat_2 = Cat.new("Whiskers")
dog_1 = Dog.new("Fido")

hotel.check_in(cat_1)
hotel.check_in(cat_2)
hotel.check_in(dog_1)

p hotel 