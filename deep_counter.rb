class DeepCounter
  def evaluate(data)
    count = 0
    data.each do |x|
      count += 1
      if x.is_a?(Array)
        count += evaluate(x)
      end
    end
    count
  end
end