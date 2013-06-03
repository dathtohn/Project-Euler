# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def factorial(n)
	return 1 if n <= 1
	return n * factorial(n-1)
end

sum = 0
(3..2000000).each do |i|
	numstr = i.to_s
	tempsum = 0
	numstr.each_char do |c|
		tempsum += factorial(c.to_i)
	end
	sum += i if tempsum == i
end

puts sum