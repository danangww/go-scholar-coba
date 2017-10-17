# this class is for sorting digits of given number
class DigitsSorter
  def descending(num)
    return unless num.is_a? Numeric
    # temp = num.to_s.chars.sort { |x, y| y <=> x }
    num.to_s.chars.sort.reverse.join.to_i
  end
end
