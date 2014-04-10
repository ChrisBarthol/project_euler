def power_digit_sum(n)
	s = 2**n
	t=s.to_s.chars.map(&:to_i).reduce(&:+)
end

puts power_digit_sum(1000)