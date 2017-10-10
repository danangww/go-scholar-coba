def find_palindrom(m,n)
	count=0
	results=[]

	while count!=n
		if m.to_s==m.to_s.reverse
			count+=1
			results<<m
		end
		m+=1
	end

	# until count==n
	# 	if m.to_s==m.to_s.reverse
	# 		count+=1
	# 		results<<m
	# 	end
	# 	m+=1
	# end

	return results
end

print find_palindrom(100,2)
puts
print find_palindrom(22,3)
puts