names = ["danang", "wahyu", "wicaksono"]

# names.each do |name|
# 	puts "My name is #{name}"
# end
names.each_with_index do |name, index|
	puts "My name is #{name}, index = #{index}"
end