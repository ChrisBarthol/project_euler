# A perfect number is a number for which the sum of its proper divisors is
#    exactly equal to the number. For example, the sum of the proper divisors
#    of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect
#    number.

#    A number whose proper divisors are less than the number is called
#    deficient and a number whose proper divisors exceed the number is called
#    abundant.

#    As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the
#    smallest number that can be written as the sum of two abundant numbers is
#    24. By mathematical analysis, it can be shown that all integers greater
#    than 28123 can be written as the sum of two abundant numbers. However,
#    this upper limit cannot be reduced any further by analysis even though it
#    is known that the greatest number that cannot be expressed as the sum of
#    two abundant numbers is less than this limit.

#    Find the sum of all the positive integers which cannot be written as the
#    sum of two abundant numbers.

def sum_of_divisors(num)
   divisors =[1]
   (2..Math.sqrt(num)).each do |value|
      if num%value==0
         divisors << value
         divisors << (num/value) if num/value != value
      end
   end
   divisors.inject(:+)
end

def abundant(n)
   abundant_numbers =[]
   (12..n).each do |value|
      if sum_of_divisors(value) > value
         abundant_numbers << value
      end
   end
   abundant_numbers
end

def abundant?(n)
   if sum_of_divisors(n) > n
      true
   else
      false
   end
end


#p sum_of_divisors(16)
#p abundant?(16)

def sum_of_abundant(num)
   cannot_sum =[]
   all_abundant_numbers = abundant(20170)
   (1..num).each do |v|
      can_sum = 0
      abundant_numbers = all_abundant_numbers.select { |d| d < v}
      abundant_numbers.each do |s|
         second_number = v-s
         if abundant_numbers.include?(second_number)
            can_sum = 1
            break
         end
      end
      if can_sum == 0
         cannot_sum << v
      end
   end
   cannot_sum
end

#p answer = sum_of_abundant(20200)
#p answer.inject(:+) #4179871

#This takes ~5 minutes to run inefficient!


#This one looks cleaner but takes longer?  Find all the sums and check numbers against it
def all_abundant_sum(num)
   can_be_summed =[]
   cannot_be_summed =[]
   a=abundant(num)
   a.each do |outer|
      a.each do |inner|
         if (outer+inner) <= 28123
            can_be_summed << (outer + inner) unless can_be_summed.include?(outer+inner)
         else
            break
         end
      end
   end
   (1..num).each do |value|
     if can_be_summed.include?(value)
      else
         cannot_be_summed << value
      end
   end
   p cannot_be_summed.inject(:+)
end




