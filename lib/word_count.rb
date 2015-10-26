class String
  def unique_word_count
    self.split(" ").length
  end

  def word_frequency_count
      frequency = Hash.new(0)

      self.split(" ").each do |word|
      frequency[word] +=1
    end

      frequency
  end

end

# def split_words
#   self.spit(" ")
#   end
# end