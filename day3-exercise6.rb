def group_and_count(numbers)
  result = Hash.new([])

  numbers.uniq.each do |val|
    result[val] = numbers.select{ |num| num == val }.count
  end

  return result
end

input = [1, 1, 2, 2, 2, 3]
puts group_and_count(input)