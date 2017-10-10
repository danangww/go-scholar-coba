def reverse_words(sentence)
	words=[]
	sentence.split(" ").each do |word|
		if word.size>=5
			words<<word.reverse
		else
			words<<word
		end
	end

	return words.join(" ")
end

puts reverse_words("Hey fellow scholars")
puts reverse_words("This is a test")
puts reverse_words("This is another test")