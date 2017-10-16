def introduction(prog,*names)
  str = prog +" is created by "
  names.each_with_index do |name, index|
    str += name 
    str += " " if index < names.size-1 
  end

  str
end

puts introduction("Ruby", "Yukihiro", "Matsumoto")
puts introduction("Rails", "David", "Heinemeier", "Hansson")
puts introduction("Python", "Guido", "van", "Rossum")