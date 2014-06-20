 # n! means n * (n 1) * ... * 3 * 2 * 1

 #   Find the sum of the digits in the number 100!

puts 100.downto(1).inject(:+) #5050
