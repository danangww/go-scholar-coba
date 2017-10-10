def multiplication(m,n)
	results=[]
	# for i in 1..m
	# 	results<<n*i
	# end

	# return results
	return (1..m).map { |i| n*i } #menghasilkan array baru
end

print multiplication(3,5)
puts
print multiplication(4,6)
puts
print multiplication(3,10)
puts