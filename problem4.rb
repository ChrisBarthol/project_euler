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
