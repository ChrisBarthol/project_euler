#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) 
#contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

def count_numbers(n)
	array = (1..n).to_a
	count = 0
	array.each do |number|
		s = english_number(number)
		count +=s.scan(/[A-Za-z]/).count

	end
	return count
end

def english_number(n)
	ones=['one','two','three','four','five','six','seven','eight','nine']
	tens=['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	teens=['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

	string = ''

	if n==1000
		return 'one thousand'
	end
	write = n/100
	left = n-write*100

	if write > 0
		hundreds = english_number(write)
		string = string + hundreds + ' hundred'
		if left > 0
			string = string + ' and '
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write == 1) and (left >0))
			string = string +teens[left-1]
			left =0
		else
			string = string +tens[write-1]
		end

		if left>0
			string = string + ' '
		end
	end

	write = left
	left= 0

	if write >0
		string = string + ones[write-1]
	end
	string
end

puts count_numbers(1000)


