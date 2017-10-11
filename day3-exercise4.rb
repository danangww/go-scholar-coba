def in_array(a1,a2)
  result = []

  a1.each do |val1|
    a2.each do |val2|
      if val2.include?(val1)
        result << val1 if !result.include?(val1)
      end
    end  
  end

  return result.sort!
end

a1 = ["strong", "live", "arp"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

print in_array(a1,a2)
puts

s1 = ["tarp", "mice", "bull"]
print in_array(s1,a2)
puts