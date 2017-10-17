# this class is for string operation, for example counting letter
class StringClass
  def letter_count(str)
    return unless str.is_a? String
    res = Hash.new(0)
    str.chars.each do |char|
      h[char.to_sym] += 1
    end
    res
  end
end
