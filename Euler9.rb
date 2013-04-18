#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def sq(n)
	return n * n
end

b = 1
c = 1

for a in 1..333 do
	#limit = 500 - a
	for b in 2..500 do
		c = 1000 - b - a
		puts "#{a} * #{b} * #{c} = #{a * b * c}" if sq(a) + sq(b) == sq(c)
	end
end