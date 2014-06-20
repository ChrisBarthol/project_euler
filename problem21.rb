# Let d(n) be defined as the sum of proper divisors of n (numbers less than
#    n which divide evenly into n).
#    If d(a) = b and d(b) = a, where a b, then a and b are an amicable pair and
#    each of a and b are called amicable numbers.

#    For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
#    44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
#    2, 4, 71 and 142; so d(284) = 220.

#    Evaluate the sum of all the amicable numbers under 10000.



def sum_of_divisors(num)
	divisors =[1]
	(2..Math.sqrt(num)).each do |value|
		if num%value==0
			divisors << value
			divisors << (num/value)
		end
	end
	divisors.inject(:+)
end

 def amicable(num)
 	sum = sum_of_divisors(num)
 	if num == sum_of_divisors(sum)
 		num
 	end
 end
   amicable_num =[]
     (1..10000).each do |num|
    	amicable_num << amicable(num) unless amicable(num) == nil
    end



print amicable_num
puts amicable_num.inject(:+) #40285