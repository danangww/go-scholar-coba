
def capitals(sentence)
	count = 0
	sentence.chars.each do |char|
		if char.match(/\p{Upper}/)
			count += 1
		end
	end

	return count;
end

puts capitals("Jakarta")
# will return 1

puts capitals("Go-Jek Scholars with Kolla Edu")
# will return 5

puts capitals("hello")
# will return 0