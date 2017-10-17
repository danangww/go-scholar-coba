require './palindrom_finder.rb'
RSpec.describe PalindromFinder do
  describe "#find_palindrom" do
    it "returns array of palindrom numbers between given bound" do
      finder = PalindromFinder.new
      expect(finder.find_palindrom(100, 2)).to eq([101, 111])
      expect(finder.find_palindrom(22, 3)).to eq([22, 33, 44])
    end
  end
end