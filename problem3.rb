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


