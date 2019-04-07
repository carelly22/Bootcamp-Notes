class Array
    def my_flatten
        flattened = []

        return [self] if self.is_a?(Array) == false 

        self.each do |ele| 
            flattened += my_flatten[ele]
        end
        flattened 
    end 
end