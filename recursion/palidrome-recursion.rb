def is_palindrome(string)
  return false if string.empty?
  return helper(string, 0, string.length - 1)
end

def helper(string, first, last)
  return true if first == last
  return true if last - first == 1

  if string[first] != string[last]
    return false
  else
    return helper(string, first + 1, last - 1)
  end
end

# TEST
s = "ada"
p is_palindrome(s)
s = "racecar"
p is_palindrome(s)
s = "table"
p is_palindrome(s)
s = ""
p is_palindrome(s)
s = "a"
p is_palindrome(s)
s = "ab"
p is_palindrome(s)