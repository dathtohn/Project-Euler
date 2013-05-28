# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?


ways = 0

(0..200).each do |one|
	amt_one = 200
	amt_one -= one

	(0..amt_one/2).each do |two|
		amt_two = amt_one
		amt_two -= 2 * two

		(0..amt_two/5).each do |five|
			amt_five = amt_two
			amt_five -= 5 * five

			(0..amt_five/10).each do |ten|
				amt_ten = amt_five
				amt_ten -= 10 * ten

				(0..amt_ten/20).each do |twenty|
					amt_twenty = amt_ten
					amt_twenty -= 20 * twenty

					(0..amt_twenty/50).each do |fifty|
						amt_fifty = amt_twenty
						amt_fifty -= 50 * fifty

						(0..amt_fifty/100).each do |dollar|
							amt_dollar = amt_fifty
							amt_dollar -= 100 * dollar

							(0..amt_dollar/200).each do |twodollar|
								amt_twodollar = amt_dollar
								amt_twodollar -= 200 * twodollar

								ways += 1 if amt_twodollar == 0 && twodollar > 0
							end
							ways += 1 if amt_dollar == 0 && dollar > 0
						end
						ways += 1 if amt_fifty == 0 && fifty > 0
					end
					ways += 1 if amt_twenty == 0 && twenty > 0
				end
				ways += 1 if amt_ten == 0 && ten > 0
			end
			ways += 1 if amt_five == 0 && five > 0
		end
		ways += 1 if amt_two == 0 && two > 0
	end
	ways += 1 if amt_one == 0
end

puts "Ways - #{ways}"

answer = 73682