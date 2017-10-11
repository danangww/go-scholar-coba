def find_longest(numbers)
  temp = numbers[0].to_s
  for i in 1...numbers.size
    if numbers[i].to_s.length > temp.to_s.length
      temp = numbers[i].to_s
    end
  end

  return temp

  #numbers.max_by { |num| num.to_s.size }
end

puts find_longest([1, 10, 100])
puts find_longest([9000, 8, 800])
puts find_longest([8, 900, 500])
puts find_longest([400, 500, 700])
puts find_longest([800, 8000, 9000])