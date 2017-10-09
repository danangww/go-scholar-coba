def fav_programming_language
	puts "What is your favorite programming language?"
	language=gets.chomp

	case language
	when "Ruby"
		puts "Ruby is created by Yukihiro Matsumoto"
	when "Python"
		puts "Python is created by Guido van Rossum"
	when "Perl"
		puts "Perl is created by Larry Wall"
	else
		puts "Sorry, I don't know that programming language"
	end
end

fav_programming_language()