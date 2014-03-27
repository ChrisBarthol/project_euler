require 'prime'

def n_prime(n)
	(Prime.first n).last
end

puts n_prime(10001)