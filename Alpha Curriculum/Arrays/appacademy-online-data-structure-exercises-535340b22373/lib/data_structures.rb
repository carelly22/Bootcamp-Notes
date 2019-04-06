# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  smallest = arr.min
  largest = arr.max
  return largest - smallest
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  return arr == arr.sort
  # your code goes here
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  count = 0
  vowels = ["a", "e", "i", "o", "u"]
  vowels.each do |vow|
    if str.downcase.include?(vow)
      count += 1
    end 
  end
  count 
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  str = str.split("")
  vowels = ["a", "e", "i", "o", "u"]
  str.each do |char|
    if vowels.include?(char.downcase)
      str.delete(char)
    end 
  end
  str.join("") 
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  nums = int.to_s.split("")
  nums.sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  string.downcase.uniq.length != str.length
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  nums = arr.to_a
  first = nums[0..2].join
  middle = nums[3..5].join
  last = nums[6..9].join
  "(#{first}) #{middle}-#{last}"
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  nums = str.delete(",").split("")
  nums = nums.map do |ele|
    ele.to_i
  end 
  p nums
  range(nums)
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  len = arr.length
  if offset < 0
    offset = arr.index(arr[offset]) 
  elsif offset > len
    offset = offset % len
  end
  return arr.drop(offset) + arr.take(offset)
end
