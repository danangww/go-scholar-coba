def checkerboard(size)
	color=["r","b"]
	str=""
	if size<=0
		return str
	else
		for i in 1..size
			if i%2 !=0
				start=0
			else
				start=1
			end

			for j in 1..size
				str+="[#{color[start%2]}]"
				start+=1
			end
			str+="\n"
		end
	end

	return str
end


puts checkerboard(7)