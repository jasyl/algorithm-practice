# https://leetcode.com/problems/maximum-subarray/

# Write a method which accepts an array of integers and a number n. The method should calculate the maximum sum of n consecutive elements in the array.

# array is all integers? negative and positive?

# what if n > array.length?
  # raise an exception?
  # return the sum of all elements?
# if n == array.length
  # return the sum of all elements
# can n be equal to 0? 
  # does that return 0?
# if n == 1
  # find the max value

# sounds like a sliding window problem
# where we have a front pointer at the first element, and then count the sum until we hit n elements with back pointer
# We save that value to a max variable and update that max variable until we hit the end. and return max

# [1, 2, 3, 4, 5] n = 2
def max_consecutive_sum(array, n)
  return nil if array.empty?
  return nil if n = 0
  return nil if array.nil?
  n = array.length if n > array.length?

  starting_index = 0
  ending_index = 0
  max = -Float::INFINITY
  current_sum = 0

  while ending_index < array.length  
      current_sum += array[ending_index]
    # create the window of n length for the first pass
    if ending_index - starting_index < n - 1 
      ending_index += 1
    # increment start and end by 1 to shift window.  
    elsif ending_index - starting_index == n - 1
      max = [current_sum, max].max
      current_sum -= array[starting_index]
      starting_index += 1
      ending_index += 1

    end

  end

    
  return max


end
a = [1, 2, 3, 4, 5]
p max_consecutive_sum(a, 1)

a = [1, 2, 3, 4, 5]
p max_consecutive_sum(a, 2)

a = [1, 2, 3, 4, 5]
p max_consecutive_sum(a, 2)