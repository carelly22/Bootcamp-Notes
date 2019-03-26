# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length > 0
            sorted = self.sort
            min = sorted[0]
            max = sorted[-1]
            difference = max - min
            return difference 
        else
            return nil
        end
    end

    def average
        if self.length > 0
            length = self.length * 1.0
            sum = self.inject(0) { |accum, ele| accum + ele }
            average = sum / length
            return average
        else
            return nil
        end 
    end
    
    def median
        len = self.length

        if len == 0
            return nil
        elsif len.odd?
            sorted = self.sort 
            mid = self.length / 2
            return sorted[mid]
        elsif len.even?
            sorted = self.sort
            ele1 = sorted[(len / 2) - 1]
            ele2 = sorted[len / 2]
            average = (ele1 + ele2) / (2 * 1.0)
            return average
        end 
    end
    
    def counts
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1 }
        count 
    end 

    def my_count(ele)
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1 }
        count[ele]
    end
    
    def my_index(ele)
        #return nil if !(self.include?(ele))
        indices = Hash.new { |hash,key| hash[key] = [] }
        if self.include?(ele)
            self.each_with_index do |ele, idx|
                indices[ele] << idx
            end
            return indices[ele].min
        else
            return nil
        end
    end 

    def my_uniq
        arr = []
        self.each { |ele| arr << ele if !(arr.include?(ele)) } 
        arr
    end

    def my_transpose
        twod = []
        arr = []
        self.each_with_index do |subarray, idx|
            self.each_with_index do |ele1, idx1|
                arr << self[idx1][idx]
            end
            twod << arr
            arr = []
        end
        twod 
    end     
end

# [0][0] -> [0][0]
# [0][1] -> [1][0]
# [0][2] -> [2][0]