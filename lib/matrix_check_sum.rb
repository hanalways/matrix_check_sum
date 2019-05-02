# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: ?
# Space complexity: ?
def matrix_check_sum(matrix)
  row_sum = 0
  col_sum = 0
  i = 0

  matrix.each do |row|
    row.length.times do 
      col_sum += row[i]
    end
    row_sum = row.sum
    i += 1
  end

  return row_sum == col_sum
end
