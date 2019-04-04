# def bubble_sort(array)
#     sorted = false 

#     # since sorted gets changed to false at the end of the while loop
#     # !sorted evaluates to true which keeps the while loop running 
#     # when !sorted evaluates to false ie. sorted is true, the array
#     # will be sorted and the while loop will stop 
#     while !sorted
#         sorted = true # reset the sorted flag to true 
#         # the each below performs a single pass of bubble sort 
#         (0...array.length - 1).each do |i|
#             if array[i] > array[i + 1]
#                 array[i], array[i + 1] = array[i + 1], array[i]
#                 sorted = false 
#             end 
#         end 
#     end
    
#     array
# end 

# p bubble_sort([2, 8, 5, 2, 6])

# p bubble_sort([6, 10, 8, -5, 9, 0, 8, 3, 2]) { |a,b| a <=> b }
class Array
    def bubble_sort(&prc)
        prc ||= Proc.new { |a, b| a <=> b }
        sorted = false 

        # since sorted gets changed to false at the end of the while loop
        # !sorted evaluates to true which keeps the while loop running 
        # when !sorted evaluates to false ie. sorted is true, the array
        # will be sorted and the while loop will stop 
        while !sorted
            sorted = true # reset the sorted flag to true 
            # the each below performs a single pass of bubble sort 
            (0...self.length - 1).each do |i|
                if prc.call(self[i], self[i + 1]) == 1
                    self[i], self[i + 1] = self[i + 1], self[i]
                    sorted = false 
                end 
            end 
        end
        
        self
    end 
end 

arr = Array.new
arr = [6, 10, 8, -5, 9, 0, 8, 3, 2]
p arr.bubble_sort
puts 
p arr.bubble_sort { |a, b| a.to_s <=> b.to_s }
