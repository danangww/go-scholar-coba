def reverse_words(sentence)
	words=[]
	sentence.split(" ").each do |word|
		if word.size>=5
			words<<word.reverse
		else
			words<<word
		end
	end

	puts words.join(" ")
end

reverse_words("Hey fellow scholars")
reverse_words("This is a test")
reverse_words("This is another test")