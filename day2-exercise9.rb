def union_jack(n)
	
	if n < 7
		n=7
	elsif !n.integer?
		n=n.ceil	
	end

	if n.odd?
		center = (n.to_f/2.to_f).ceil
		for i in 1..n
			side = n - center
			for j in 1..side
				if j == i
					print "X"
				else
					print "-"
				end
			end
			print "X"
			for k in center+1..n
				if k == n-(i-1)
					print "X"
				else
					print "-"
				end
			end
			print "\n"
		end
	else

	end

	return center
end


puts union_jack(1)