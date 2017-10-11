def deep_count(data)
  count = data.size

  data.each do |x|
    if x.is_a?(Array)
      return count+deep_count(x)
    end
  end

  return count
end

puts deep_count([])
puts deep_count(["x", "y", ["z"]])
puts deep_count([1, 2, [3, 4, [5]]])
puts deep_count([[[[[[[[[]]]]]]]]])