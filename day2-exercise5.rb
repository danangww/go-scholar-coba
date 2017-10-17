def find_palindrom(m,n)
	results = []
	while results.size != n
		if (m.to_s == m.to_s.reverse) && (m.to_s.size != 1)
			results << m
		end
		m += 1
	end
	# until count==n
		# if (m.to_s == m.to_s.reverse) && (m.to_s.size != 1)
		#   count += 1
		# 	results << m
		# end
		# m += 1
	# end

	return results
end

print find_palindrom(100, 2)
puts
print find_palindrom(22, 3)
puts
print find_palindrom(1, 10)
puts