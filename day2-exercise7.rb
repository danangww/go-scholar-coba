def descending(value)
	chars=value.to_s.split(//)

	chars.sort!{|x, y| y <=> x}

	return chars.join("").to_i
end


puts descending(21445) # will return 54421
puts descending(145263) # will return 654321
puts descending(1254859723) # will return 9875543221