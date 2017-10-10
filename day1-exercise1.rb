def fav_programming_language
	puts "What is your favorite programming language?"
	language=gets.chomp

	case language
	when "Ruby"
		return "Ruby is created by Yukihiro Matsumoto"
	when "Python"
		return "Python is created by Guido van Rossum"
	when "Perl"
		return "Perl is created by Larry Wall"
	else
		return "Sorry, I don't know that programming language"
	end
end

puts fav_programming_language()