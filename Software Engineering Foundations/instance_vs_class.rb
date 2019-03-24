# Agenda
# - instance variables (attributes)
# - class variables 

class Car
    # NUM_WHEELS = 4
    @@num_wheels = 4

    def initialize(color)
        @color = color
    end

    def self.upgrade # need to call this directly on the class itself
        @@num_wheels = 0
        # NUM_WHEELS
    end

    def num_wheels
        # NUM_WHEELS
        @@num_wheels
    end 

end

car_1 = Car.new("black")
car_2 = Car.new("red")

# car_1 and car_2 both share the num_wheels class variable
# we're sharing data across every car instance
p car_1.num_wheels
p car_2.num_wheels

Car.upgrade # change num_wheels to 0

p car_1.num_wheels
p car_2.num_wheels

# even if you create a new car after the upgrade, it will have 0 wheels

car_3 = Car.new("silver")
p car_3.num_wheels

# if you want to create a constant class variable, simply declare it at the 
# top of the class in all caps (similar to a normal constant)