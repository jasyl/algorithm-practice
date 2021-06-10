# https://leetcode.com/problems/move-zeroes/

# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Note that you must do this in-place without making a copy of the array.

## Clarification ##
# Must move zeros in-place, do not create new array
# non-zero element array
# all integers

## Test Cases ## 
nums = [0,0,0,0] # => [0,0,0,0]
nums = [0,0,0,0,5] # => [5,0,0,0,0]
nums = [0] # => [0]
nums = [1,2,3] # => [1, 2, 3]
nums = [1, 0, 2, 0, 3, 0] #=> [1, 2, 3, 0, 0, 0]
nums = [1, 0, 2, 0, 3, 0 ,4] #=> [1, 2, 3, 4, 0, 0, 0]


## Notes ##

# [1, 0, 2, 0, 3, 0 ,4]
#     ^  ^
# [1, 2, 0, 0, 3, 0 ,4]
#        ^     ^
# [1, 2, 3, 0, 0, 0 ,4]
#        ^     ^

# [1, 2, 3, 0, 0, 0 ,4]
#           ^        ^ 

# [1, 2, 3, 4, 0, 0 ,0]
#           ^        ^ 


# [0,0,0,0,5]
#  ^       ^

# 1. loop through the array, start the beginning.
      # have two pointers i, j
      # if the value at i is 0, then increment j until j != 0
          # then swap
      #   # if there is no next non-zero value, then i'm done. 

## [1, 0, 2, 0, 3, 0 ,]4

def move_zeros(nums)
  return nums if nums.length == 1

  i = 0
  j = 0
  while j < nums.length
    if nums[i] == 0

      until nums[j] != 0 || j >= nums.length -1
        j += 1
      end

      if nums[j] != 0
        temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
      else
        return nums
      end
    end

    i += 1
    j += 1
  end
  return nums
end