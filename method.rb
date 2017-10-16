# def cube(n=1, m=0)
#   n ** 3 + m
# end

# puts cube()
# puts cube(3)
# puts cube(3, 3)

def qualifier(zone, *countries)
  puts "The winners of #{zone} qualifiers are:\n"
  countries.each do |country|
    puts "- #{country}"
  end  
end

puts qualifier("South America", "Brazil", "Uruguay", "Argentina", "Colombia").class
puts qualifier("Asia", "Iran", "South Korea", "Japan").class

# def multiply(val1, *val2)
#   res = val1
#   val2.each do |val|
#     res *= val
#   end

#   return res
# end

# puts multiply(2, 4)
# puts multiply(1, 2, 3)
# puts multiply(1, 2, 3, 4)