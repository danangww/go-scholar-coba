require './string_class.rb'
RSpec.describe StringClass do
  describe "#letter_count" do
    it "returns a hash that shows the number of occurences of each letter in given string" do
      obj = StringClass.new
      expect(obj.letter_count("gojek")).to eq({:g=>1, :o=>1, :j=>1, :e=>1, :k=>1})
      expect(obj.letter_count("kolla")).to eq({:k=>1, :o=>1, :l=>2, :a=>1})
      expect(obj.letter_count("scholarship")).to eq({:s=>2, :c=>1, :h=>2, :o=>1, :l=>1, :a=>1, :r=>1, :i=>1, :p=>1})
    end
    it "returns nil if input is not a string" do
      obj = StringClass.new
      expect(obj.letter_count(123)).to be_nil
      expect(obj.letter_count(["kolla", "edu"])).to be_nil
      expect(obj.letter_count({a: 'a', b: 'c'})).to be_nil
    end
  end
end