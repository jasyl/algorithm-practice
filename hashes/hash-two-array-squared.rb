# Given two integer arrays,  return true if every value in the first array has it's corresponding value squared in the second array.
# https://dev.to/karthikeyan676/problem-solving-patterns-1hf7

# QUESTIONS
# does the order matter? Assuming no
# can one element in one array count for multiple in the other? 
  # ex: [1, 2, 3] [1, 4, 9, 9] 
  # ex: [1, 2, 2, 3] [1, 4, 9]
  # are either of these valid? assuming no?
  # needs to match 1:1 

def is_valid(a1, a2)
  # return false if a1.length != a2.length
  return false if a1.empty? || a2.empty?

  values = Hash.new(0)

  a2.each do |num|
    values[num] += 1
  end

  a1.each do |num|
    if !values.has_key?(num ** 2)
      return false
    end

    if values[num ** 2] >= 1
      values[num ** 2] -= 1
    else
      return false
    end
  end
  return true
end

# TEST 
a1 = [1, 2, 3]
a2 = [1, 4, 9]

p is_valid(a1, a2)

a1 = [1, 2, 3]
a2 = [1, 9, 4]

p is_valid(a1, a2)

a1 = [1, 2, 3]
a2 = [1, 9, 9]

p is_valid(a1, a2)
a1 = [1, 3, 3]
a2 = [1, 9, 9]

p is_valid(a1, a2)

a1 = [1, 3]
a2 = [1, 9, 9]
p is_valid(a1, a2)

a1 = [1, 2, 2]
a2 = [1, 4, 4, 2]
p is_valid(a1, a2)