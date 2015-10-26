class String
  def unique_word_count
    split_words.length
  end

  def word_frequency_count
    frequency = Hash.new(0)

    split_words.each do |word|
      frequency[word] += 1
    end

    frequency
  end

  def split_words
    # self.split(" ")
    self.scan(/[\w']+/)
  end
end
