class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        self.map { |k,v| self[v] = k }
    end
end
