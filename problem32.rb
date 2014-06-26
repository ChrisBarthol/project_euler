# The product 7254 is unusual, as the identity, 39 * 186 = 7254, containing
#    multiplicand, multiplier, and product is 1 through 9 pandigital.

#    Find the sum of all products whose multiplicand/multiplier/product
#    identity can be written as a 1 through 9 pandigital.
#    HINT: Some products can be obtained in more than one way so be sure to
#    only include it once in your sum.

def pandigital_product(a,b)
	pandigital =[]
	(1..a).each do |a|
		(1..b).each do |b|
			array = [a,b,a*b].to_s.split('').select{ |m| m=~/[0-9]/ }.map{ |i| i.to_i }
			if array.length == 9 && array.sort == [1,2,3,4,5,6,7,8,9]
				pandigital << a*b unless pandigital.include?(a*b)
			end
		end
	end
	p pandigital
	p pandigital.inject(:+)
end

pandigital_product(10000,100) #[5796, 4396, 7632, 7254, 5346, 6952, 7852]
#sum is 45228