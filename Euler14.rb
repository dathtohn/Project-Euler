=begin
The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
Although it has not been proved yet (Collatz Problem),it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

greateststeps = 0
startingnum = 1
terms_array = Array.new(1000000)

(1..1000000).each do |i|
	number = i
	
	terms = 1
	while number != 1
		terms += 1
		
		if number % 2 == 0
			number = number / 2
		else
			number = 3 * number + 1
		end

		# checks array to see if number is already accounted for
		if number < i
			terms = terms_array[number-1] + terms - 1
			number = 1
		end
	end

	terms_array[i-1] = terms
	if terms > greateststeps
		greateststeps = terms
		startingnum = i
	end

	puts "#{i} has #{terms} terms."
end

puts "#{startingnum} with #{greateststeps}"