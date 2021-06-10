# https://www.interviewcake.com/question/ruby/bracket-validator?course=fc1&section=queues-stacks
# https://leetcode.com/problems/valid-parentheses/


def bracket_validator(s)
  openers = "({["
  closers = ")}]" 

  bracket_tracker = []

  s.each_char do |char|
    p char
    p bracket_tracker
    if openers.include?(char)
      bracket_tracker.push(char)
    end

    if closers.include?(char)
      if bracket_tracker.empty?
        return false
      else
        removed_bracket = bracket_tracker.pop
        if removed_bracket != char # need hash so you can check
          return false
        end
      end
    end
  end

  return bracket_tracker.empty?

end
s = "{ [ ( ] ) }"
p bracket_validator(s)

s = "{[]()}"
p bracket_validator(s)

s = "{ [ }"
p bracket_validator(s)