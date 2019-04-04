class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each do |k,v|
            new_hash[v] = k
        end 
    end
    new_hash 
end