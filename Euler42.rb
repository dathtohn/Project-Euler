# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

def tri(n)
	ans = (n / 2.0) * (n + 1)
	return ans
end

words_array = File.read("42.txt").split(",").map(&:strip)
abc = [%q("), 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

n = 0
tri_array = Array.new
while tri(n) <= 192 do
	n += 1
	tri_array << tri(n).to_i
end

num_tri_words = 0
max_value = 0
(0..words_array.count - 1).each do |i|
	sum_of_letters = 0
	word = words_array[i]
	word.each_char do |c|
		sum_of_letters += (abc.find_index(c))
	end
	max_value = sum_of_letters if sum_of_letters > max_value
	num_tri_words += 1 if tri_array.include?(sum_of_letters)
end

puts num_tri_words
# 162