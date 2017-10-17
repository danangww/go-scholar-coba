require './sentence_builder.rb'
RSpec.describe SentenceBuilder do
  describe "#create_sentence" do
    it "returns a sentence from given array of words" do
      builder = SentenceBuilder.new
      array = ['hello', 'world']
      expect(builder.create_sentence(array)).to eq('hello world')
    end

    it "returns empty string from given empty array" do
      builder = SentenceBuilder.new
      array = []
      expect(builder.create_sentence(array)).to eq('')
    end

    it "returns nil if input is not an array" do
      builder = SentenceBuilder.new
      array = "1"
      expect(builder.create_sentence(array)).to be_nil
    end
  end
end