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

puts abundant?(100)