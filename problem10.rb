require 'prime'

def sum_of_primes_below(n)
	primes = Prime.take_while { |m| m < n }
	puts primes.reduce(:+)
end

sum_of_primes_below(2000000)

