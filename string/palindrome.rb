# Write an efficient function that checks whether any permutation of an input string is a palindrome. 
# leetcode link: https://leetcode.com/problems/valid-palindrome/

# QUESTIONS
# What characters should be considered, alphanumeric? What about punctuation, spaces?
# lowercase, uppercase? 

# Method 1 - Two Pointer method. 

def is_palindrome(string)
  return true if string.empty? || string.length == 1

  front = 0
  back = string.length - 1

  while back > front
    return false if string[front] != string[back]
    front += 1
    back -= 1    
  end
  return true
end

# TEST CASES
s = "ada"
p is_palindrome(s) 

s = "racecar"
p is_palindrome(s)

s = "bat"
p is_palindrome(s)

s = 'rrrcccrrrcc'
p is_palindrome(s) 