def add(*value)
  if value.size > 1
    sum = 0
    value.each do |val|
      sum += val
    end

    sum
  else
    puts "minimum input is two values"
  end
end

def subtract(*value)
  if value.size > 1
    res = value[0]
    for i in 1...value.size
      res -= value[i]
    end

    res
  else
    puts "minimum input is two values"
  end
end

# puts add(4,5)
# puts add(-10, 2, 3)
# puts add(0, 0, 0, 0)
# puts subtract(4, 5)

def calculate(*value)
  if value.last.is_a? (Hash)
    operator = value.pop.keys[0]
  else
    operator = :add
  end

  case operator
  when :add
    add(*value)
  when :subtract
    subtract(*value)
  else
    puts "invalid input type"
  end
end

puts calculate(4, 5)
puts calculate(4, 5, add: true)
puts calculate(-10, 2, 3, add: true)
puts calculate(0, 0, 0, 0, add: true)
puts calculate(4, 5, subtract: true)
puts calculate(-10, 2, 3, subtract: true)
puts calculate(0, 0, 0, 0, -10, subtract: true)