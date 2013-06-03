# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

# wiki says 20161

def abundant?(n)
	return false if n <= 2
	sum = 0
	limit = Math.sqrt(n)
	sum -= limit if limit.truncate == limit
	(2..limit).each do |i|
		if (n % i == 0)
			sum += i
			sum += (n / i)
			return true if sum.to_i > n
		end
	end
	return false
end

# i add the sums as i find out about abundant numbers
abundant_array = Array.new
sum_of_two_abundants_array = Array.new(20162, false)
(12..20161).each do |i|
	if abundant?(i)
		abundant_array << i 
		j = 0
		while (j < abundant_array.count) && ((i + abundant_array[j]) <= 20161) do
			sum_of_two_abundants_array[i + abundant_array[j]] = true
			j += 1
		end
	end
end

# puts abundant_array
sum = 0
(1..20161).each do |i|
	sum += i if sum_of_two_abundants_array[i] == false
end

puts sum