# There are exactly ten ways of selecting three from five, 12345:

# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

# In combinatorics, we use the notation, 5C3 = 10.

# In general,

# nCr =	
# n!
# r!(nr)!
# ,where r  n, n! = n(n1)...321, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

# How many, not necessarily distinct, values of  nCr, for 1  n  100, are greater than one-million?

def factorial(n)
	return 1 if n <= 1
	return n * factorial(n-1)
end

def combinations(n, r)
	return 0 if r > n
	return 1 if r == n
	numerator = 1
	if r >= (n - r)
		(r + 1..n).each do |i|
			numerator *= i
		end
		return (numerator / factorial(n - r))
	else
		(n - r + 1..n).each do |i|
			numerator *= i
		end
		return (numerator / factorial(r))
	end
end

distinct_values = 0
n = 23
while n <= 100 do
	r = 2
	while r <= n do
		distinct_values += 1 if combinations(n, r) > 1000000
		r += 1
	end
	n += 1
end

puts distinct_values