class String
  def unique_word_count
    return self.split.uniq.count
  end

  def word_frequency_count
    word_array = self.split
    unique_array = self.split.uniq
    result = Hash.new
    unique_array.each do |word|
      result[word] = word_array.count(word)
    end
    return result
  end
end