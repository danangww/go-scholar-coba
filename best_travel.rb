def choose_best_sum(t, k, ls)
  if ls.size < k 
    nil
  else
    temp_sum = []
    temp = ls.permutation(k).uniq.sort.select{ |arr| arr[k-1] > arr[k-2]}

    temp.each do |data|
      temp_sum << data.sum
    end

    temp_sum.select{ |sum| sum <= t }.last
  end
end

ts = [50, 55, 57, 58, 60]
puts choose_best_sum(163, 3, ts)

ys = [451, 18, 284, 318, 47, 353, 115, 478, 284, 334, 117]
puts choose_best_sum(230, 2, ys)