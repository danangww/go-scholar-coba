def fav_programming_language
  puts 'What is your favorite programming language?'
  language = gets.chomp

  case language
  when 'Ruby'
    'Ruby is created by Yukihiro Matsumoto'
  when 'Python'
    'Python is created by Guido van Rossum'
  when 'Perl'
    'Perl is created by Larry Wall'
  else
    'Sorry, I don\'t know that programming language'
  end
end

puts fav_programming_language
