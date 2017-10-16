def word_count(text)
  hash = Hash.new(0)
  words = text.downcase.gsub(/[^a-z ]/i,"").split(" ")
  words.each do |word|
    hash[word.to_sym] += 1
  end

  hash.sort_by{ |word, count| count}

  most_word, most_value = hash.first
  less_value = hash.values[hash.length-1]
  less_word = hash.keys[hash.length-1]

  return "most word : #{most_word} & less word : #{less_word}"
end

puts word_count("New: Returns a new, empty hash. If this hash is subsequently accessed by a key that does not correspond to a hash entry, the value returned depends on the style of new used to create the hash. In the first form, the access returns nil. If object is specified, this single object will be used for all default values. If a block is specified, it will be called with the hash object and the key, and should return the default value. The block has the responsibility to store the value in the hash if required.")