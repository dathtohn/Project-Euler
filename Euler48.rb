# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def modpower(base, exp)
	return 1 if exp <= 0
	while modpower > 1000000000 do
		modpower / 10.00000
	end
	return base * modpower(base, exp-1)
end

sum = 0
(1..10).each do |i|
	sum += modpower(i, i)
end

puts sum

puts power(999, 50)