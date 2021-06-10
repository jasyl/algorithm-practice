# Given two strings, write a method to determine if they are anagrams.
# https://leetcode.com/problems/valid-anagram/submissions/

# Method 1
# loop through once and create two hashes to compare
# Time: O(n) - where n is the length of the max string
# Space: O(n) - hash

def is_anagram(s, t)
  return false if s.length != t.length

  counter = Hash.new(0)
    
    s.each_char do |char|
        counter[char] += 1
    end
    
    t.each_char do |char|
        if counter.has_key?(char) && counter[char] >= 1
            counter[char] -= 1
        # this might not be necessary now: 
        # elsif counter[char] == 1
        #     counter.delete(char)
        else 
          return false
        end
    end
  # return counter.empty?  
  return true
end

# Method 2
# Time: O(n * Log(n)) - sort has n * log(n) time complexity
# Space: O(n) - using .chars creates a new array which is then converted into a string
def anagram(s1, s2)
  s1_sorted = s1.chars.sort.join
  s2_sorted = s2.chars.sort.join
  return s1_sorted == s2_sorted
end

s1 = "listen"
s2 = "silent"
p is_anagram(s1, s2)

s1 = "triangle"
s2 = "integral"
p is_anagram(s1, s2)

s1 = "hello"
s2 = "pizza"
p is_anagram(s1, s2)

s1 = "pat"
s2 = "jasmine"
p is_anagram(s1, s2)

s1 = ""
s2 = ""
p is_anagram(s1, s2)

s1 = "a"
s2 = "b"
p is_anagram(s1, s2)

s1 = "rrccc"
s2 = "rracc"
p is_anagram(s1, s2)

s1 = "aac"
s2 = "aaa"
p is_anagram(s1, s2)