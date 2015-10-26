class String
  def unique_word_count
    word_arr = self.split(/[\s.,#!$%&;:()]+/)
    return word_arr.length
  end

  def word_frequency_count
    word_arr = self.split(/[\s.,#!$%&;:()]+/)
    freq = {}

    word_arr.each do |word|
      freq[word] =  freq[word] ? (freq[word] + 1) : 1
    end

    return freq
  end
end
