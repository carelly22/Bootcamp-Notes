class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        # use a range with increasing numbers
        (0...self.length).each do |idx_1|
            # we want unique pairs so start the second 
            # .each with idx_1 + 1
            (idx_1 + 1...self.length).each do |idx_2|
                count += 1 if self(idx_1) + self(idx_2) == num
            end 
        end
        count  
    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        prc ||= Proc.new { |a,b| a <=> b }

        sorted = false 

        while !sorted # while our array is not sorted 
            sorted = true
            (0...self.length - 1).each do |i|
                # we need to make sure our interations don't go off the edge
                # so we iterate up to length - 1
                if prc.call(self[i], self[i + 1]) == 1
                    sorted = false # need to flip to false; if we do one swap we potentially have to do other swaps 
                    self[i], self[i + 1] = self[i + 1], self[i] # quick way to swap in ruby
                    # when you do the swap, you need to actually mutate the self array
                    # so need to reference self 
                end 
            end  
        end
        self 
    end 
end

# What does it mean to pass in a default proc?

# how does <=> work?
# when a > b we get a +ve number
# when a < b we get a -ve number
# when a == b we get 0