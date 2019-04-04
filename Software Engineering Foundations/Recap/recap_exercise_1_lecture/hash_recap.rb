class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)
        new_hash = {}
        prc ||= Proc.new { |k,v| k == v }

        self.each do |k,v|
            new_hash[k] = v if prc.call(k,v)
        end 
    end
    new_hash 
end

# def my_select(arr, &prc)
#     new_arr = []
#     arr.each { |ele| new_arr << ele if prc.call(ele) == true } 
#     new_arr
# end