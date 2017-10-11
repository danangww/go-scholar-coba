def high_and_low(seq)
  data=seq.split(" ")
  highest = data[0].to_i
  lowest = data[0].to_i

  for i in 1...data.size
    highest = data[i].to_i if data[i].to_i > highest
    
    lowest = data[i].to_i if data[i].to_i < lowest
  end

  return "#{highest} #{lowest}"
end

puts high_and_low("1 -1")
puts high_and_low("1 1")
puts high_and_low("-1 -1")
puts high_and_low("1 -1 0")
puts high_and_low("1 1 0")
puts high_and_low("-1 -1 0")
puts high_and_low("42")
puts high_and_low("3 5 29 54 4 0 -214 542 -64 1 -3 6 -6")