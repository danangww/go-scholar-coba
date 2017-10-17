# this class for sentence builder from given array of words
class SentenceBuilder
  def create_sentence(array)
    array.join(' ') if array.is_a?(Array)
  end
end
