# Using Documentation: Ruby-Doc
# 
# #all?
# #any?
# #none?
# #count
# #flatten

print [["a", "b"], ["c"]].flatten
puts
print [2,4,6].all? { |num| num.even? } # true
puts 
print [2,4,5,6].any? { |num| num.even? } # true
puts 
print [3,5,5,7].none? { |num| num.even? } # true
puts
print [3,6,5,7].count { |num| num.even? } # 1
puts