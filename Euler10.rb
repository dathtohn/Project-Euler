#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

numarr = Array.new(2000000, -1)
numarr[0] = 0

num = 2
index = 1

while num <= 2000000 do
	if numarr[index] == -1
		numarr[index] = num
		i = num * 2
		# puts the multiples of the num in hash as 0
		while i <= 2000000 do
			numarr[i - 1] = 0
			i += num
		end
	end
	num += 1
	index += 1
end

sum = 0
for j in 0..1999999 do
	sum += numarr[j]
	puts "#{numarr[j]}"
end

puts "Sum of all primes under 2 million is #{sum}"