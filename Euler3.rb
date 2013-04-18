#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def isPrime(n)
#Returns True if n is prime
	return true if n == 2
	return true if n == 3
	return false if n % 2 == 0
	return false if n % 3 == 0

	i = 5
	w = 2
	
	while i * i <= n do
		return false if n % i == 0
		i += w
		w = 6 - w
	end

	return true
end

num = 600851475143
test = 1
nextprime = 2

while test * nextprime < num do
	nextprime += 1
	nextprime += 1 until isPrime(nextprime)
	puts "#{nextprime}"
	if num % nextprime == 0
		test = test * nextprime
	end
end

=begin
while !isPrime(test) or num % test != 0 do
	test -= 1
end
=end

puts "Largest prime factor is #{nextprime}"
