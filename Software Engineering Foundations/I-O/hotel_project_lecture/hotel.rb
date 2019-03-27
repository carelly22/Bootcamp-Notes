require_relative "room"

class Hotel
    def initialize(name, capacities)
        @name = name 
        @rooms = {}
        
        capacities.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
            # this line will assign the key-value pairs into @rooms
        end 
    end 

    def name
        # splitting it on a space will give you an array of words
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def rooms
        @rooms
    end 

    def room_exists?(name)
        # room_names are the key of the rooms hash
        @rooms.has_key?(name)
    end 

    def check_in(person, room)
        if self.room_exists?(room)
            # why are we using self.room_exists??
            # because room_exists? is a hotel instance method
            if @rooms[room].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does not exist" 
        end
    end 

    def has_vacancy?
        @rooms.values { |room| room.available_space > 0 }
    end 

    def list_rooms
        @rooms.each do |room_name, room|
            # need to use interpolation in order to print out the requested info
            puts "#{room_name} : #{room.available_space}"
        end 
    end
end 

# recall that you can remove the {} from a hash when passing it in as 
# an argument, but only if it is the last argument in the list 

# start by checking if the room exists
# if it does, based on the arg, then check the person in and print success
# if it does not, print that the room does not exist/failure

[4,5,6,8].any? { |ele| ele % 2 == 0 } # at least one element satisfies this criteria so return true 