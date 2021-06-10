# Given a string of combo of alphabets/numbers/punctuation, reverse only the alphabet parts. "ABC" => "CBA"; ".!...a...b.........c..." => ".!...c...b.........a..."

# https://leetcode.com/problems/reverse-only-letters/

# reverse only the strings. 
# two pointer problem
# front will continue until it finds a character
# the back will continue until it finds a character

# OPTION 1: two pointer
def reverse_letters(s)
  front = 0
  back = s.length - 1

  while front < back 
    if !s[front].match(/[A-Za-z]/) 
      front += 1
    elsif !s[back].match(/[A-Za-z]/)
      back -= 1
    else
      swap(s, front, back)
      front += 1
      back -= 1
    end
  end
  return s
end

def swap(s, front, back)
  temp = s[front]
  s[front] = s[back]
  s[back] = temp 
end

# OPTION 2: 
def reverse_letters2(s)
  result = ""
  back = s.length - 1

  s.each_char.with_index do |char, index|
    if char.match(/[A-Za-z]/)
      while back > index
        if s[back].match(/[A-Za-z]/)
          result += s[back]
          break
        end
        back -= 1
      end
      if back == index
        result += char
      end
    else
      result += char
    end
  end

  return result
end




# TEST

s = "ABC"
p reverse_letters(s)

s = ".!...a...b.........c..."
p reverse_letters(s)
