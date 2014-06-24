 # n! means n * (n 1) * ... * 3 * 2 * 1

 #   Find the sum of the digits in the number 100!

factorial_100 = 100.downto(1).inject(:*)

def get_digits(n)
	Math.log10(n).floor.downto(0).map { |i| (n /10**i) %10 }
end

puts get_digits(factorial_100).inject(:+)
