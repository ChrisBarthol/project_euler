#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
require 'prime'

def prime_factor(n)
	a=n
	b=2
	c=0
	while a>1
		if a % b ==0
			a=a/b
			c=b
			b=2
		else
			b+=1
		end
	end
	puts c
end



prime_factor(600851475143)


