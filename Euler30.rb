# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def fifth_power(n)
	return n ** 5
end

def sum_of_fifth_power_digits?(n)
	nstr = n.to_s
	sum = 0
	nstr.each_char do |c|
		sum += fifth_power(c.to_i)
		return false if sum > n
	end
	return true if sum == n
	return false
end

sum = 0
(2..200000000).each do |i|
	sum += i if sum_of_fifth_power_digits?(i)
end

puts sum
puts "443839"