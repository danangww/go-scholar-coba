def apple(n)
  str = ''
  if n < 4
  else
    length = (2 * n) - 1
    n = n.odd? ? n - 1 : n
    mid = n / 2 + 1
    (1..n).each do |line|
      # printing start space
      (n - line).times do
        str += ' '
      end
      gap = 1
      if line != mid
        str += 'A'
        (gap + ((line - 2) * 2)).times do
          str += ' '
        end
        str += 'A' if line != 1
      else
        a_count = 0
        (1..length).each do |i|
          if i.odd?
            str += 'A'
            a_count += 1
          else
            str += ' '
          end

          break if a_count == mid
        end
      end
      str += "\n"
    end
    str
  end
end

filename = ARGV.first

print 'How many apple lines? '
n = $stdin.gets.chomp.to_i

# output_stream = open(filename, "w")
# output_stream.write("This is just a test text.")

# output_stream.close

# open(filename, "w") { |file| file.write("This is test file using block lul.") }
output_reader = open(filename, 'w')
output_reader.write(apple(n))
output_reader.close

print "\nHere's is your apple in file #{filename} \n"
