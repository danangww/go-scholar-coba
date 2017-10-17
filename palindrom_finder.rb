# this class is for finding palindrom number
class PalindromFinder
  def find_palindrom(m, n)
    res = []
    while res.size < n
      res << m if m.to_s == m.to_s.reverse
      m += 1
    end
    res
  end
end
