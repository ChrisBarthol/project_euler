#The sum of the squares of the first ten natural numbers is,

#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(n)
	square = thearray(n).map { |n| n*n}
	square.reduce(:+)
end


def square_of_sums(m)
	sum = thearray(m).reduce(:+)
	sum*sum
end

def thearray(n)
	(0..n).to_a
end

puts sum_of_squares(100)
puts square_of_sums(100)
puts square_of_sums(100)-sum_of_squares(100)