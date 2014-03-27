require 'prime'

def smallest_multiple(m)
 	numbers = (2..m).to_a
 	store = Array.new
 	prime = Prime.take(10)
 	nextprime = prime.shift
 	while numbers.length>0
 		happen=false
 		#divide array by prime number if modulus is zero 
	 	oldnumbers = numbers.map do |n|
	 		if n%nextprime==0
	 			n/nextprime
	 		else
	 			n
	 		end
	 	end
	 	#if array changed, store the prime and repeat
	 	if numbers != oldnumbers
	 		store << nextprime
	 	else
	 		nextprime = prime.shift
	 	end

	 	#delete array value if it is 1
	 	numbers = oldnumbers.delete_if { |n| n==1}
	 	
 	end
 	puts store.reduce(:*) #print smallest multiple
end

smallest_multiple(20)