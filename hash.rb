a = ["Pengabdi Setan", 5]
b = ["The Raid 2", 5]
c = ["Ziarah", 4]
data = [a, b, c]
movie_ratings = Hash[data]

movie_ratings.each { |key,value| puts "Movie #{key} is rated #{value}"  }
movie_ratings.each { |item| puts "Movie #{item[0]} is rated #{item[1]}"  }
movie_ratings.each_key { |key| puts "Movie #{key}"  }
movie_ratings.each_value { |val| puts "Movie is rated #{val}"  }
# a_hash = Hash.new([])
# a_hash["A"] << 5
# a_hash["B"] << 4

# puts a_hash["A"].to_s
# puts a_hash["B"].to_s
# puts a_hash["C"].to_s
# puts a_hash.to_s
# a_hash["A"] == a_hash["B"]

