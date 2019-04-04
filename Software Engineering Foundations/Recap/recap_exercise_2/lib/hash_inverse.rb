class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each do |k,v|
            new_hash[v] = k
        end
        new_hash 
    end
end

### Testing ### 
hash1 = Hash.new()
hash1 = {"a"=>1, "b"=>2}
p hash1
p hash1.inverse