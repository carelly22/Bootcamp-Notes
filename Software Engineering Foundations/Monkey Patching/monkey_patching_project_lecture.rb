def Array
    def span
        return nil if self.length == 0
        # return nil if self.empty?

        self.max - self.min
    end

    def average
        return nil if self.empty?
        self.sum / (self.length * 1.0)
    end

    def median
        return nil if self.empty?

        if self.length.odd?
            mid_index = self.length / 2
            return self.sort[mid_index]
        else # when array contains an even number of elements
            sorted = self.sort 
            mid_index = self.length / 2
            first_ele = sorted[mid_index]
            second_ele = sorted[mid_index - 1]
            return (first_ele + second_ele) / 2.0
        end  
    end 

    def counts
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1}
        count 
    end 
end 
