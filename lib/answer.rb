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
  # 1. delete number that in the range of new_interval
  set.each do |interval|
    interval.each_with_index do |num, i|
      if num > new_interval[0] && num < new_interval[1]
        interval[i] = nil
      end
    end
  end

  set.delete([nil, nil])

  # 2. put new_interval number into it
  set.each_with_index do |interval, i|
    if interval[1].nil?
      if set[i + 1][0].nil?
        interval[1] = set[i + 1][1]
        set.delete_at(i + 1)
      else
        interval[1] = new_interval[1]
      end
    elsif interval[0].nil?
      interval[0] = new_interval[0]
    end

    unless set[i + 1].nil?
      if interval[1] == set[i + 1][0]
        interval[1] = set[i + 1][1]
        set.delete_at(i + 1)
      end
    end
  end

  return set
end


# Q4. Given a 2D board and a word, find if the word exists in the grid.
def two_d(board, word)
  rows = board.size
  columns = board[0].size
  marks = Array.new(rows) { Array.new(columns) }

  # 1. check every character
  rows.times do |row|
    columns.times do |column|
      # call private method
      # return true if word exist
      return true if exist(board, row, column, word, 0, marks)
    end
  end

  # 2. if don't have word
  return false
end

# Q5. Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
def sum(a, b)
  return Math.log10(10**a * 10**b).to_i
end

private

# method for Q4
def exist(board, row, column, word, i, marks)
  # if not last one
  return false if marks[row][column] == true
  # if charater does not exist
  return false if board[row][column] != word[i]
  return true if i == word.size - 1

  marks[row][column] = true

  # check char that around itself
  [-1, 1].each do |offset|
    # check left and right
    new_row = row + offset
    # make sure it's not out of the array
    if new_row.between?(0, board.size - 1)
      # check next if it's not last one
      return true if exist(board, new_row, column, word, i + 1, marks)
    end

    # check up and down
    new_column = column + offset
    # make sure it's not out of the array
    if new_column.between?(0, board[0].size - 1)
      # check next if it's not last one
      return true if exist(board, row, new_column, word, i + 1, marks)
    end
  end

  # last one
  marks[row][column] = false

  # if not exist
  return false
end







