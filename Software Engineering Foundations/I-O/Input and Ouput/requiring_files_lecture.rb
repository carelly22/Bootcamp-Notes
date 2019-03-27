class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end 

    def check_in(guest)
        @guests << guest 
    end 
end 

# class Cat
#     def initialize(name)
#         @name = name
#     end 
# end 

hotel = PetHotel.new("Animal Inn")

cat_1 = Cat.new("Sennacy")
cat_2 = Cat.new("Whiskers")

hotel.check_in(cat_1)
hotel.check_in(cat_2)

p hotel 
# the first element in hotel is the Sennacy Cat instance
# the second element in hotel is the Whiskers Cat instance

# What about if our Cat instance was more complex or we wanted to store other pets in the Pet Hotel?
# A good rule of organisation is to keep your classes in different files 

# When separate our classes into different files, we need a way for the classes in our files
# to talk to each other
# How do we do this? How do we bring the functionality of one file into another?
# use require!

# What happens when you run require? 
# the main files goes to the file in require and runs all of the code inside that file
# then you have access to everything in that file 

# You have access to constants across your files 
# Note that technically your Classes are constants (because they begin with a capital letter)
# you can access Var but not var in pethotel.rb from cat.rb