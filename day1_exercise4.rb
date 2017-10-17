def mix_fruit(fruits)
  price = 0
  fruits.each do |fruit|
    case fruit
    when 'banana', 'orange', 'apple', 'lemon', 'grapes'
      price += 5
    when 'avocado', 'strawberry', 'mango'
      price += 7
    else
      price += 9
    end
  end
  total = price.to_f / fruits.size.to_f
  total.round
end

puts mix_fruit(['banana', 'mango', 'avocado']) # will resturn: 6
puts mix_fruit(['melon', 'Mango', 'kiwi']) # will resturn: 8
puts mix_fruit(['watermelon', 'cherry', 'avocado']) # will resturn: 8
puts mix_fruit(['watermelon', 'lime', 'tomato']) # will resturn: 9
puts mix_fruit(['blackBerry', 'coconut', 'avocado']) # will resturn: 8
puts mix_fruit(['waterMelon', 'mango']) # will resturn: 8
puts mix_fruit(['watermelon', 'pEach']) # will resturn: 9
puts mix_fruit(['watermelon', 'Orange', 'grapes']) # will resturn: 6
puts mix_fruit(['watermelon']) # will resturn: 9
puts mix_fruit(['BlACKbeRrY', 'cOcONuT', 'avoCaDo']) # will resturn: 8
