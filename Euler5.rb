#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Uses the euclidian algorithm to find the GCF
def gcf_finder(p, q)
	if (q == 0)
		return p
	else
		return gcf_finder(q, p % q)
	end
end

# Gets the least common multiple
def lcm_finder(n1, n2, gcf)
	lcm = (n1 * n2) / gcf
	return lcm
end

lcm = 1

for i in 2..20 do
	if i >= lcm
		gcf = gcf_finder(i, lcm)
	else
		gcf = gcf_finder(lcm, i)
	end
	lcm = lcm_finder(i, lcm, gcf)
	puts "After #{i} the lcm is #{lcm}"
end

puts "Smallest evenly divisible number by 1-20 is #{lcm}"