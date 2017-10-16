def letter_count(word)
  # hash = {}
  # word.chars.uniq.each do |char|
  #   hash[char.to_sym] = word.count(char)
  # end

  hash = Hash.new(0)
  word.chars.each do |char|
    hash[char.to_sym] += 1
  end
   
  return hash 
end

puts letter_count("gojek")
puts letter_count("kolla")
puts letter_count("scholarship")