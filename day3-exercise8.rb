def string_from_hash(hash)
  str = ""
  count = 1
  hash.each do |key, value|
    str += "#{key} = #{value}"
    str += ", " if count < hash.size
    count += 1
  end

  str
end

puts string_from_hash({a: 1,b: 2})