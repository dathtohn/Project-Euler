#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

largestproduct = 1

for i in 830...999 do
	for j in 830...999 do
		product = i * j
		if product.to_s() == product.to_s().reverse and product > largestproduct
			largestproduct = product
			num1 = i
			num2 = j
		end
	end
end
=begin
while product.to_s() != product.to_s().reverse do
	999.

	product = num1 * num2
end
=end
puts "#{num1} x #{num2} = #{largestproduct}"