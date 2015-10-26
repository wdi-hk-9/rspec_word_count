class String

  def unique_word_count
    puts self.split.count
  end

  def word_frequency_count
    frequency = Hash.new(0)
    # (0) defaults the value 0 in all keys
    words = self.split(' ')
    words.each do |word|
      frequency[word] +=1
    end
  return frequency
  end
end
