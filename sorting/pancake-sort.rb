# https://www.pramp.com/challenge/3QnxW6xoPLTNl5jX5LM1

# find the max index
# swap between first and max
# also swap the whole array so max ends up at the end
# the sorting will start from the end of the array. 
def pancake_sort(arr)
  # your code goes here 
  r = arr.length
  while r >= 0
    max_index = max(arr, r)
    if max_index != r - 1
      flip(arr, max_index + 1)
      flip(arr, r)
    end
    r -= 1
  end
  return arr
end

def flip(arr, k)
  i = 0
  j = k - 1
  
  while i < j
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    i += 1
    j -= 1
  end
end

def max(arr, k)
  max_index = 0
  k.times do |index|
    if arr[max_index] < arr[index]
      max_index = index
    end
  end
  return  max_index
end