require_relative "answer"

# Q1
# Given s = "hello", return "olleh"
puts 'Question 1:'
a = reverse_string('hello')
puts "Answer 1: #{s} (should be 'olleh')"

# Q2
# Input: 16, Returns: True
# Input: 14, Returns: False
puts 'Question 2:'
b1 = is_square(16)
b2 = is_square(14)
puts "Answer 2-1: #{b1} (should be 'True')"
puts "Answer 2-2: #{b2} (should be 'False')"

# Q3
# Given intervals [1,3],[6,9]
# insert and merge [2,5] in as [1,5],[6,9].
# Given [1,2],[3,5],[6,7],[8,10],[12,16]
# insert and merge [4,9] in as [1,2],[3,10],[12,16].
puts 'Question 3:'
c1 = non_overlapping([[1,3],[6,9]], [2,5])
c2 = non_overlapping([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,9])
puts "Answer 3-1: #{c1} (should be [1,5],[6,9])"
puts "Answer 3-2: #{c2} (should be [1,2],[3,10],[12,16])"

# Q4
board =[
  ['A','B','C','E'],
  ['S','F','C','S'],
  ['A','D','E','E']]
# word = "ABCCED", -> returns true,
# word = "SEE", -> returns true,
# word = "ABCB", -> returns false.
puts 'Question 4:'
d1 = two_d(board, "ABCCED")
d2 = two_d(board, "SEE")
d3 = two_d(board, "ABCB")
puts "Answer 4-1: #{d1} (should be 'true')"
puts "Answer 4-2: #{d2} (should be 'true')"
puts "Answer 4-3: #{d3} (should be 'false')"


# Q5
# Given a = 1 and b = 2, return 3.
puts 'Question 5:'
e = sum(1, 2)
puts "Answer 5: #{e} (should be '3')"
