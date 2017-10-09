def mix_fruit(fruits)
	price = 0
	#price 5 for regular, 7 for special, 9 for extra special
	regular_fruits=["banana","orange","apple","lemon","grapes"]
	special_fruits=["avocado","strawberry","mango"]

	fruits.each do |fruit|
		if regular_fruits.include? fruit.downcase
			price = price + 5
		elsif special_fruits.include? fruit.downcase
			price = price + 7
		else
			price = price + 9
		end
	end

	total=price/fruits.size.to_f.round

	puts total
end

mix_fruit(["banana","mango","avocado"]) # will resturn: 6
mix_fruit(["melon","Mango","kiwi"]) # will resturn: 8
mix_fruit(["watermelon","cherry","avocado"]) # will resturn: 8
mix_fruit(["watermelon","lime","tomato"]) # will resturn: 9
mix_fruit(["blackBerry","coconut","avocado"]) # will resturn: 8
mix_fruit(["waterMelon","mango"]) # will resturn: 8
mix_fruit(["watermelon","pEach"]) # will resturn: 9
mix_fruit(["watermelon","Orange","grapes"]) # will resturn: 6
mix_fruit(["watermelon"]) # will resturn: 9
mix_fruit(["BlACKbeRrY","cOcONuT","avoCaDo"]) # will resturn: 8
