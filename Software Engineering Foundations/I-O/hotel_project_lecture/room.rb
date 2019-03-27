class Room
    def initialization(capacity)
        @capacity = capacity
        @occupants = occupants
    end 

    def capacity
        @capacity
    end 

    def occupants
        @occupants
    end

    def full?
        if occupants.length < @capacity
            return false
        else
            return true
        end 
    end

    def available_space
        @capacity - @occupants.length
    end 

    def add_occupant(person)
        if self.full?
            return false
        else
            @occupants << person
            return true  
        end 
    end 
end

my_room = Room.new(3)
print my_room.available_space # 3
my_room.add_occupant("alvin") # true
my_room.add_occupant("audriana") # true
print my_room.available_space # 1
my_room.add_occupant("anj") # true
my_room.add_occupant("jerry") # false
