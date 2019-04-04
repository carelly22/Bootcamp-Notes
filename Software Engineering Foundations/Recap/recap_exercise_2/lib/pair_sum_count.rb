class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1
                    if ele1 + ele2 == num
                        count += 1
                    end 
                end 
            end 
        end
        count  
    end
end 

arr = Array.new
arr = [1, 2, 1, 3, 8]
p arr.pair_sum_count(5)