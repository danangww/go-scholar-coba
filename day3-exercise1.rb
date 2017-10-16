def insert_dash(number)
	str = ""
	temp = number.to_s

  for i in 0...temp.size
		str += temp[i].to_s
		str += "-" if temp[i].to_i.odd? && temp[i+1].to_i.odd?
	end

	return str
end

puts insert_dash(454793)
puts insert_dash(123456)
puts insert_dash(1003567)
puts insert_dash(24680)
puts insert_dash(13579)