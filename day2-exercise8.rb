def pattern(n)
	if n>0
		str = "1"
		for i in 2..n do
			str += "\n"
			i.times do
				str += "#{i}"
			end		
		end
	else
		str = ""
	end

	return str
end

puts pattern(1) # will return:
# 1

puts pattern(5) # will return:
# 1
# 22