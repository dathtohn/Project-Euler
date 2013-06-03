# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def modpower(base, exp)
	ans = 1
	while exp >= 1 do
		ans *= base
		until ans.to_s.length <= 10 do
			tempstr = ans.to_s
			ans = tempstr[tempstr.length - 10, 10].to_i
		end
		exp -= 1
	end
	return ans
end

sum = 0
(1..1000).each do |i|
	sum += modpower(i, i)
end

puts sum
puts sum.to_s[sum.to_s.length - 10, 10]