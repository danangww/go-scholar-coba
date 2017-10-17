def apple(n)
  str = ""
  if n < 4
    str
  else
    length = (2 * n) - 1
    n = n.odd? ? n -1 : n
    mid = n/2 + 1
    for line in 1..n
      #printing start dash
      (n - line).times do
        str += " "
      end
      
      gap = 1
      if line != mid
        if line == 1
          str += "A"
        else
          str += "A"
          (gap + (((line - 1) - 1) * 2)).times do
            str += " "
          end
          str += "A"
        end
      else
        a_count = 0
        for i in 1..length
          if i.odd?
            str += "A"
            a_count += 1
          else
            str += " "
          end

          break if a_count == mid  
        end
      end

      str += "\n"
    end

    str
  end
end

print "How many apple lines? "
n = gets.chomp.to_i
print "\nHere's is your apple: \n"
puts apple(n)