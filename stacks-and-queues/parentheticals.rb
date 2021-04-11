# https://www.interviewcake.com/question/ruby/matching-parens?course=fc1&section=queues-stacks

# "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing." 

# Write a method that, given a sentence like the one above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis. 

# Example: if the example string above is input with the number 10 (position of the first parenthesis), the output should be 79 (position of the last parenthesis). 

# using stack? 
# start looping through string at starting index
# push parens to the stack, pop when encountering the the closing paren. when last paren is poppped, return location of string. 
# need to check if list is empty after popping. 

# assumption: valid use of parens. 


# using stack
# Time: O(n)
# Space: O(n)
def find_closing_paren_location_stack(string, start)
  paren_tracker = []
  i = start
  while i < string.length
    if string[i] == "("
      paren_tracker.push("(")
    elsif string[i] == ")"
      paren_tracker.pop
      if paren_tracker.empty?
        return i
      end
    end
    i += 1
  end
end

# no stack
# Time: O(n)
# Space: O(1)
def find_closing_paren_location(string, start)
  paren_tracker = 0
  i = start
  
  while i < string.length
    if string[i] == "("
      paren_tracker += 1
    elsif string[i] == ")"
      if paren_tracker == 0
        return i
      else
        paren_tracker -= 1
      end
    end
    i += 1
  end

  raise "no closing parens" # if we've reached this point, there's no matching parens. 

end



# Test cases
s = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
start = 10
p find_closing_paren_location(s, start)