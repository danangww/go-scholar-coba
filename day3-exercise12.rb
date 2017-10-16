def find_anagrams(hash)
  chars = []
  hash.each do |key, value|
    for i in 1..key
      for j in 0...value.size
        chars << value[j]
      end
    end
  end

  permutations = chars.permutation.to_a.sort

  anagrams = []
  permutations.each do |permutation|
    anagrams << permutation.join().to_s
  end

  return anagrams.uniq
end

print find_anagrams({1 => ["a", "b", "c"]})
puts
print find_anagrams({2 => ["a"], 1 => ["b", "c"]})
puts