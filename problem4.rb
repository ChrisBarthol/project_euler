#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome_product(a,b)
	store = Array.new

	for a in 0..a
	 	for b in 0..b
			if (a*b).to_s== (a*b).to_s.reverse
				store << a*b
			end
		end
	end

	puts store.sort.last
end

palindrome_product(999,999)
