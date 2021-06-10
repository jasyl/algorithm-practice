# https://leetcode.com/problems/longest-substring-without-repeating-characters/

# Given a string s, find the length of the longest substring without repeating characters

require 'set'
# Time: O(n) generally? maybe O(2n)
# Space: O(n) created a set that could contain up to n words
def longest_substring(s)
  return 0 if s.empty?
  return 1 if s.length == 1

  max_length = 0
  longest_substring = Set.new

  first = 0
  last = 0

  while last < s.length
    until !longest_substring.include?(s[last])
      longest_substring.delete(s[first])
      first += 1
    end 
    longest_substring.add(s[last])
    max_length = [max_length, longest_substring.length].max
    last += 1
  end
  return max_length
end

s = "abcabcbb"
p longest_substring(s) # => 3

s = "bbbbb"
p longest_substring(s)  # => 1

s = "pwwkew"
p longest_substring(s)  # => 3