# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

numarr = Array.new(1000000, -1)
numarr[0] = 0

num = 2
index = 1

while num <= 1000000 do
	if numarr[index] == -1
		numarr[index] = num
		i = num * 2
		# puts the multiples of the num in hash as 0
		while i <= 1000000 do
			numarr[i - 1] = 0
			i += num
		end
	end
	num += 1
	index += 1
end

prime_arr = Array.new
numarr.map { |e| 
	prime_arr << e if e != 0 
}
puts prime_arr.count

# prime_arr.count = 78498
# not efficient?!
ONE_MILLION = 1000000
greatest_num_of_terms = 1
greatest_prime = 0
j = 0

while (prime_arr[j] <= (ONE_MILLION / greatest_num_of_terms)) and (j + greatest_num_of_terms) < prime_arr.count do
	sum = 0
	terms = 0
	k = j

	while sum <= ONE_MILLION and k <= prime_arr.count do
		if terms > greatest_num_of_terms
			if prime_arr.include?(sum)
				greatest_prime = sum
				greatest_num_of_terms = terms
			end
		end
		terms += 1
		sum += prime_arr[k]
		k += 1
	end
	j += 1
end

puts "Greatest prime as a sum of longest consecutive #{greatest_num_of_terms} primes is #{greatest_prime}"