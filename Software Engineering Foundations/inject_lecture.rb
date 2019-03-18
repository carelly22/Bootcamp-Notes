# in general, you want to use inject on an array
# when you are using inject, you need to pass in a 
# block of code
# whatever block you pass in must accept two parameters
# one is the accumulator, and the other is the element

arr = [2,3,1,7]

result = arr.inject { |accum, el| accum + el }
# accum : 2
# el : 3
# accum : 5
# el : 1
# accum : 6
# el : 7
# accum : 13 # this is the final result

result2 = arr.inject { |accum, el| accum * el }
# accum : 2
# el : 3
# accum : 6
# el : 1
# accum : 6
# el : 7
# accum : 42 # this is the final result

result3 = arr.inject(100) { |accum, el| accum + el }
# accum : 100
# el : 2 
# accum : 102
# el : 3
# accum : 105
# el : 1 
# accum : 106
# el : 7
# accum : 113 # this is the final result with 100 as the first accumulator
 
print result 
puts
print result2
puts
print result3
puts