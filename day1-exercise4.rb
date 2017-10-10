# def mix_fruit(fruits)
# 	price = 0
# 	#price 5 for regular, 7 for special, 9 for extra special
# 	regular_fruits=["banana","orange","apple","lemon","grapes"]
# 	special_fruits=["avocado","strawberry","mango"]

# 	fruits.each do |fruit|
# 		if regular_fruits.include? fruit.downcase
# 			price = price + 5
# 		elsif special_fruits.include? fruit.downcase
# 			price = price + 7
# 		else
# 			price = price + 9
# 		end
# 	end

# 	total=price/fruits.size.to_f.round

# 	return total
# end

def mix_fruit(fruits)
	price = 0
	#price 5 for regular, 7 for special, 9 for extra special

	fruits.each do |fruit|
		case fruit
		when "banana","orange","apple","lemon","grapes"
			price = price + 5
		when "avocado","strawberry","mango"
			price = price + 7
		else
			price = price + 9
		end
	end

	total=price.to_f/fruits.size.to_f

	return total.round
end

puts mix_fruit(["banana","mango","avocado"]) # will resturn: 6
puts mix_fruit(["melon","Mango","kiwi"]) # will resturn: 8
puts mix_fruit(["watermelon","cherry","avocado"]) # will resturn: 8
puts mix_fruit(["watermelon","lime","tomato"]) # will resturn: 9
puts mix_fruit(["blackBerry","coconut","avocado"]) # will resturn: 8
puts mix_fruit(["waterMelon","mango"]) # will resturn: 8
puts mix_fruit(["watermelon","pEach"]) # will resturn: 9
puts mix_fruit(["watermelon","Orange","grapes"]) # will resturn: 6
puts mix_fruit(["watermelon"]) # will resturn: 9
puts mix_fruit(["BlACKbeRrY","cOcONuT","avoCaDo"]) # will resturn: 8
