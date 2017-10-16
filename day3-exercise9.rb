def list(hashes)
  str = ""
  count = 1
  hashes.each do |hash| 
    hash.each do |key, value|
      str += value
      str += ", " if count < hashes.size - 1
      str += " & " if count == hashes.size - 1
    end
    count += 1 
  end

  return str
end

puts list([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}])
puts list([{name: 'Bart'}, {name: 'Lisa'}])
puts list([{name: 'Bart'}])
puts list([])