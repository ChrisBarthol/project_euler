
def triplet(a,b,c,u,v)
	d=a+b+c
	i=0
	for u in 0..u
	 	for v in 1..v
	 		a=(v*v)-(u*u)
	 		b=2*u*v
	 		c=(v*v)+(u*u)
	 		d=a+b+c
			if d==1000
				puts a,b,c
				puts a*b*c
				break
			end
		end
	end
end

triplet(0,0,0,25,26)
	