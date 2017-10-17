require './digits_sorter.rb'
RSpec.describe DigitsSorter do
  describe "#descending" do
    it "returns number with descending order of its digits" do
      sorter = DigitsSorter.new
      expect(sorter.descending(21445)).to eq(54421)
      expect(sorter.descending(145263)).to eq(654321)
      expect(sorter.descending(1254859723)).to eq(9875543221)
    end
    it "returns nil if input is not a valid number" do
      sorter = DigitsSorter.new
      expect(sorter.descending("abc")).to be_nil
    end
  end
end