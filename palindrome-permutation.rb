# Write an efficient function that checks whether any permutation of an input string can a palindrome. 
# https://medium.com/algorithms-practice/given-a-string-check-if-it-is-a-permutation-of-a-palindrome-e0469f47761d
# https://www.geeksforgeeks.org/check-characters-given-string-can-rearranged-form-palindrome/

def palindrome_permutation(string)
  return true if string.empty? || string.length == 1

  char_freq = Hash.new

  string.each_char do |char| 
    if char_freq.has_key?(char)
      char_freq.delete(char)
    else
      char_freq[char] = 1
    end
  end
  return char_freq.length == 1 || char_freq.empty?
end

# TEST

s = "ada"
p palindrome_permutation(s)

s = "racecar"
p palindrome_permutation(s)

s = "bat"
p palindrome_permutation(s)

s = "rrrcccrrrcc"
p palindrome_permutation(s)