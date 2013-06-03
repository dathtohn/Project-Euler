# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

sum = 0
(1..1000000).each do |i|
	istr = i.to_s
	if istr[istr.length - 1, 1] != '0'
		if istr == istr.reverse
			binarystr = i.to_s(2)
			sum += i if binarystr == binarystr.reverse
		end
	end
end

puts sum