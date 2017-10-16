def iq_test(numbers)
  data = numbers.split(" ").map! { |num| num.to_i.odd? }

  if data.count(false) == 1
    index = data.index(false)
  else
    index = data.index(true)
  end

  index + 1
end

puts iq_test("2 4 7 8 10")
puts iq_test("1 2 2")