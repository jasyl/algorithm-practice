def product_except_self(nums)
    
  return nil if nums.length == 0
  return nums[0] if nums.length == 1
  
  result = Array.new(nums.length, 1)

  product = 1
  nums.each_with_index do |num, index|
      result[index] = product
      product *= num  
  end
  
  i = nums.length - 1
  product = 1
  until i == 0
      result[i] *= product  
      product *= nums[i]
      i -= 1
  end
  
  return result
end



nums = [1,2,3,4]
nums = [-1,1,0,-3,3]