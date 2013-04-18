#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

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

i = 1
nextprime = 1

while i <= 10001 do
	nextprime += 1
	i += 1 if isPrime(nextprime)
end

puts "#{nextprime}"