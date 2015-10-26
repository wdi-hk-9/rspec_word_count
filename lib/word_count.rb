class String

  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def unique_word_count
    words.split.size
  end

  def word_frequency_count
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    frequency
  end
end