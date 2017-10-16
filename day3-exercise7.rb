def find_occurrences(numbers)
  numbers.each do |val|
    return val if numbers.count(val).odd? 
  end

  return nil
end

puts find_occurrences([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5])
puts find_occurrences([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5])
puts find_occurrences([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5])
puts find_occurrences([10])
puts find_occurrences([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10])
puts find_occurrences([10, 10])