# Q1. Write a function that takes a string as input and returns the string reversed.
def reverse_string(string)
  return string.reverse
end

# Q2. Given a positive integer num, write a function which returns True if num is a perfect square else False.
def is_square(num)
  ans = false
  case num
    when 0
      ans = false
    when 1
      ans = true
    else
      (1..num/2).each { |n| ans = true if n**2 == num }
    end
  return ans
end

# Q3. Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).
def non_overlapping(set, new_interval)

end


# Q4. Given a 2D board and a word, find if the word exists in the grid.
def two_d(board, word)

end

# Q5. Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
def sum(a, b)
  return Math.log10(10**a * 10**b).to_i
end
