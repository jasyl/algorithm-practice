public class Solution {
  public int[] productExceptSelf(int[] nums) {
    #   nums = [1, 2, 3, 4]
      int n = nums.length;
      int[] res = new int[n];
      res[0] = 1;  # result = [1, nil, nil, nil]
      for (int i = 1; i < n; i++) {
          res[i] = res[i - 1] * nums[i - 1];  # result = [1, 1, 2, 6]
      }

      # result = [1, 1, 2, 6]

      int right = 1;
      for (int i = n - 1; i >= 0; i--) { # i = 2
          res[i] *= right;  # result = [1, 1, 8, 6]
          right *= nums[i]; # right = 12
      }
      return res;
  }

  nums = [1, 2, 3, 4]
  result = [nil, nil, nil, nil]

  def product_except_self(nums)
    length = nums.length
    result = Array.new(length)

    result[0] = 1
    i = 1
    while i < length
      result[i] = result[i - 1] * nums[i - 1]
      i += 1
    end

    right = 1
    i = length - 1
    while i >= 0
      result[i] *= right
      right *= nums[i]
      i -= 1
    end
    return result

  end



# Result = [nil,nil,nil,nil]

# # FIRST LOOP
# 1
# Length = 4
# Result = [1, nil, nil, nil]
# i = 1
# Result[1] = result[0] * nums[0] = 1
# Result = [1, 1, nil, nil]
# i = 2
# 2
# result[2]  = result[1] * nums[1] = 2
# Result = [1, 1, 2, nil]
# I = 3
# 3
# Result[3] = result[2] * nums[2] = 6
# Result = [1, 1, 2, 6]
# I = 4
# 4
# Nums = [1, 2, 3, 4]

# # Second loop
# Right_index = 1
# 1
# i = 3
# Result[3] *= 1 = 6 * 1
# Result = [1, 1, 2, 6]
# Right *= nums[3] = 1 * 4 = 4
# Right_index = 4
# i = 2
# 2 
# Result[2] *= 4 = 2 * 4 = 8
#     Result = [1, 1, 8, 6]
#     right _index *= nums[2] = 4 * 3 = 12
#     Right_index = 12
#     i = 1
# 3
# Result[1] *= 12 = 1 * 12 = 12
#     Result = [1, 12, 8, 6]
#     Right = 12 * nums[1] = 12 * 2 = 24
#     Right_index = 24
#     i = 0
# 4
# Result[0] *= right = 1 * 24 = 24
#     Result = [24, 12, 8, 6]
#     Right *= nums[0] = 1 * 24 = 24
#     I = -1

# Return result
    


  