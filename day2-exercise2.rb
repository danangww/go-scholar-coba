def format_phone_number(numbers)
	size=numbers.size
	# str=""
	# for index in 0...size
	# 	if index == 0
	# 		str+="("
	# 		str+=numbers[index].to_s
	# 	elsif index==2
	# 		str+=numbers[index].to_s
	# 		str+=") "
	# 	elsif index==5
	# 		str+=numbers[index].to_s
	# 		str+="-"
	# 	else
	# 		str+=numbers[index].to_s	
	# 	end

	# 	break if index==9
	# end
	
	str="("
	0.upto(2) do |index|
		str+=numbers[index].to_s
	end
	str+=") "
	3.upto(5) do |index|
		str+=numbers[index].to_s
	end
	str+="-"
	6.upto(9) do |index|
		str+=numbers[index].to_s
	end

	return str
end


puts format_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])