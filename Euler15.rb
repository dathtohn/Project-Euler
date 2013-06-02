# Starting in the top left corner of a 22 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 2020 grid?

# d r, r d
# d d r r, r r d d, d r d r, r d r d, d r r d, r d d r


def factorial(n)
	return 1 if n <= 1
	return n * factorial(n-1)
end

ans = factorial(40) / factorial(20) / factorial(20)
puts ans