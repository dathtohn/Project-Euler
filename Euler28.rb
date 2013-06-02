# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

row = 1000
column = 1000
number = 1001 * 1001
grid = Array.new(1001) { Array.new(1001) }

rowstopper = 1000
columnstopper = 0

while number != 0 do
  grid[row][column] = number
  if column == columnstopper 
    columnstopper += 1
    if row == rowstopper
      rowstopper -= 1
      
  else
    column -= 1
    number -= 1
  end
end