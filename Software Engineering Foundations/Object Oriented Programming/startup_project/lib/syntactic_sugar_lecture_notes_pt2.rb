# Have you ever wondered how the [] or indexing method works?

class Queue
    def initialize
        @line = []        
    end

    def [](position)
        @line[position]
    end 

    # this is an instance method
    def []=(position, ele)
        @line[position] = ele        
    end 
    
    # def ele_at_pos(position)
    #     @line[position]
    # end 
    
    def add(ele)
        @line << ele # add ele to the back of the line
        nil
    end 

    def remove
        @line.shift # remove front ele of the line
    end 
end

checkout = Queue.new
checkout.add("Alan")
checkout.add("Alonzo") 
# once you have added Alonzo, Alan is at the front of the line

# the below code is clunky, what about if we wanted to use [] by itself for indexing?
# p checkout.ele_at_pos(0) # Alan
# p checkout.ele_at_pos(1) # Alonzo

p checkout.[](1) # Alonzo
# we're not using syntactic sugar here, so this method call looks ugly
# instead, we can write:

p checkout[1] # Alonzo
# this behaviour is specific to the [] method 

# what if we want a way to reassign a position?
# is p checkout[0] = "Grace"
# p checkout.[]=(0, "Grace") 

p checkout[0] = "Grace"
# what we can reason out is that whatever you put within the brackets will 
# become the first argument and whatever you put after the equal sign will
# be your second argument 
# in this case, 0 is the first argument (position)
# "Grace" is the second argument (ele)