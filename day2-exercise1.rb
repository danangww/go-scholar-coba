def create_sentence(words)
	str=""
	for i in 0...words.size
		str+=words[i]
		str+=" " if i!=words.size-1
	end

	# words.size.times do |index|
	# 	str+=words[index]
	# 	str+=" "
	# end

	# index=0
	# while index<words.size
	# 	str+=words[index]
	# 	str+=" "
	# 	index+=1
	# end



	return str
end


puts create_sentence(["hello", "world"])