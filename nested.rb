class Array
  def same_structure_as(arr)
    same = true
    for i in 0...self.size
      if self[i].class != arr[i].class
        same = false
        break
      end
    end
    same
  end
  # def same_structure_as(arr)
  #   check(arr)
  # end
  
  # def check(arr)
  #   structure = []
  #   arr.map do |val|
  #     if val.is_a?(Array)
  #       structure << "array"
  #       structure << check(val)
  #     else
  #       structure << "value"
  #     end 
  #   end
    
  #   structure.join(",")
  # end
end

a = Array.new([1, [2, 3]])
b = Array.new([ [ [ ], [ ] ] ])
p b.same_structure_as(b)
# p b.check(b)