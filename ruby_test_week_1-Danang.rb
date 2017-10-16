# #no 1
# candidate = {}
# candidate[:years_of_experience] = 1
# candidate[:github_points] = 500
# candidate[:languages_worked_with] = ['C', 'Ruby', 'Python', 'Clojure']
# candidate[:applied_recently] = true
# candidate[:age] = 26

# def hired?(candidate)
#   candidate[:languages_worked_with].include?("Ruby") && (candidate[:years_of_experience] >= 2 || candidate[:github_points] >= 500) && candidate[:age] > 15 && !candidate[:applied_recently]
# end

# puts is_hired = hired?(candidate)

# #no 2
# def sum_of_cubes(a, b)
#   sum = 0
#   for val in a..b
#     sum += val ** 3
#   end
#   sum
# end

# puts sum_of_cubes(1, 3) # return 36
# puts sum_of_cubes(3, 5) # return 216

# #no 3
# def palindrome?(string)
#   string.gsub!(" ","").downcase!
#   temp = string

#   is_palindrom = temp.reverse == string ? true : false
# end

# puts palindrome?("Race fast safe car")    # true
# puts palindrome?("Live not on evil")      # true
# puts palindrome?("Live free or die hard") # false

# #no 4
# def array_of_fixnums?(arr)
#   is_fixnums = true
#   arr.each do |e|
#     is_fixnums = false if !e.is_a?(Fixnum)
#   end
#   is_fixnums
# end

# puts array_of_fixnums?([1, 2, 3])       # return true
# puts array_of_fixnums?(["a", "b", "c"]) # return false
# puts array_of_fixnums?([])              # return true

# #no 5
# def non_duplicate_values(arr)
#   arr.select{ |num| arr.count(num) == 1}
# end

# print non_duplicate_values([1, 2, 2, 3, 3, 4, 5]) # return [1, 4, 5]
# puts
# print non_duplicate_values([1, 2, 2, 3, 4, 4])    # return [1, 3]

# #no 6
# def get_order_cost(menu, ordered_items)
#   total = 0
#   ordered_items.each do |item, qty|
#     total += menu[item] * qty
#   end
#   total
# end

# menu = { rice: 2, chicken: 4, meat: 5 }

# ordered_items = { rice: 1, chicken: 1 }
# puts get_order_cost(menu, ordered_items)
# # return 6

# ordered_items = { rice: 1, meat: 1 }
# puts get_order_cost(menu, ordered_items)
# # return 7

# ordered_items = { rice: 1, chicken: 2, meat: 2 }
# puts get_order_cost(menu, ordered_items)
# # return 20

# #no 7
# def get_total_cost(menu, *ordered_menu)
#   total = 0
#   ordered_menu.each do |ordered_items|
#     ordered_items.each do |item, qty|
#       total += menu[item] * qty
#     end
#   end
#   total
# end

# menu = { rice: 2, chicken: 4, meat: 5 }

# puts get_total_cost(menu, { rice: 1, chicken: 2, meat: 2 })
# # return 20

# puts get_total_cost(menu, { rice: 1, chicken: 1 }, { rice: 1, meat: 1 })
# # return 13

# #no 8
# def kaprekar(num)
#   data = (num ** 2).to_s
#   val1 = data[0...data.size/2].to_i
#   val2 = data[data.size/2...data.size].to_i

#   is_kaprekar = (val1+val2) == num ? true : false
# end

# puts kaprekar(9)     # return true
# puts kaprekar(46)    # return false
# puts kaprekar(55)    # return true
# puts kaprekar(90)    # return false
# puts kaprekar(297)   # return true
# puts kaprekar(703)   # return true

# #no 9
# def roman_numeral(num)
#   str = ""
#   if num == 1
#     str += "I"
#   elsif num == 2
#     str += "II"
#   elsif num == 3
#     str += "III"
#   elsif num == 4
#     str += "IV"
#   elsif num == 5
#     str += "V"
#   elsif num == 6
#     str += "VI"
#   elsif num == 7
#     str += "VII"
#   elsif num == 8
#     str += "VIII"
#   elsif num == 9
#     str += "IX"
#   elsif num == 10
#     str += "X"
#   elsif num == 40
#     str += "XL"
#   elsif num == 50
#     str += "L"
#   elsif num == 90
#     str += "XC"
#   elsif num == 100
#     str += "C"
#   elsif num == 400
#     str += "CD"
#   elsif num == 500
#     str += "D"
#   elsif num == 900
#     str += "CM"
#   elsif num == 1000
#     str += "M"
#   end

#   if num > 10 && num < 100
#     if num > 40 && num < 50
#       str = "XL" + roman_numeral((num % 40))
#     elsif num > 50 && num < 90
#       str = "L" + roman_numeral((num % 50))
#     elsif num > 90 && num < 100
#       str = "XC" + roman_numeral((num % 90))
#     else
#       str = roman_numeral(10) * (num / 10) + roman_numeral((num % 10))
#     end
#   elsif num > 100 && num < 1000
#     if num > 400 && num < 500
#       str = "CD" + roman_numeral((num % 400))
#     elsif num > 500 && num < 900
#       str = "D" + roman_numeral((num % 500))
#     elsif num > 900 && num < 1000
#       str = "CM" + roman_numeral((num % 900))
#     else
#       str = roman_numeral(100) * (num / 100) + roman_numeral(num % 100)
#     end
#   end
#   str
# end

# puts roman_numeral(1)        # return I
# puts roman_numeral(2)        # return II
# puts roman_numeral(9)        # return IX
# puts roman_numeral(26)       # return XXVI
# puts roman_numeral(141)      # return CXLI

#no 10
def num_to_words(num)
  #pakai hash atau array bisa bro
  str = ""
  if num == 0
    str += "nol "
  elsif num == 1
    str += "satu "
  elsif num == 2
    str += "dua "
  elsif num == 3
    str += "tiga "
  elsif num == 4
    str += "empat "
  elsif num == 5
    str += "lima "
  elsif num == 6
    str += "enam "
  elsif num == 7
    str += "tujuh "
  elsif num == 8
    str += "delapan "
  elsif num == 9
    str += "sembilan "
  elsif num == 10
    str += "sepuluh "
  elsif num == 1000000
    str += "satu juta"
  end

  if num > 10 && num < 20
    str = num_to_words(num % 10) + "belas "
  elsif num > 19 && num < 100
    str = num_to_words(num / 10) + "puluh " + (num % 10 != 0 ? num_to_words(num % 10) : "")
  elsif num > 100 && num < 1000
    str = num_to_words(num / 100) + "ratus " + (num % 100 != 0 ? num_to_words(num % 100) : "")
  elsif num > 1000 && num < 1000000
    str = num_to_words(num / 1000) + "ribu " + (num % 1000 != 0 ? num_to_words(num % 1000) : "")
  end

  str.gsub("satu ratus", "seratus").gsub("satu ribu","seribu").gsub("satu puluh","sepuluh").gsub("satu belas","sebelas")
end

puts num_to_words(0)      # return "nol"
puts num_to_words(1)      # return "satu"
puts num_to_words(10)     # return "sepuluh"
puts num_to_words(11)     # return "sebelas"
puts num_to_words(45)     # return "empat puluh lima"
puts num_to_words(123)    # return "seratus dua puluh tiga"
puts num_to_words(1234)    
puts num_to_words(12345)    
puts num_to_words(123400) 
puts num_to_words(999999)
puts num_to_words(1000000)
puts num_to_words(11245)
puts num_to_words(234000)