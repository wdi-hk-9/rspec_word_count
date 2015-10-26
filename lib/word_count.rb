class String
  def unique_word_count
    array_of_individual_words = words_from_string(self)
    count_unique_words_in_array(array_of_individual_words)
  end

  def word_frequency_count
    array_of_individual_words = words_from_string(self)
    count_of_each_word(array_of_individual_words)
  end

  def words_from_string(original_string)
    # 1. SPLIT
    # Simpler (non-regex) method is to use .split() instead of .scan()
    # However, .split() will not remove extranious punctuation.
    # original_string.downcase.split()

    # 2. SCAN
    # This returns an array of individual words, stripped of punctiation and all lowercase
    original_string.downcase.scan(/[\w']+/)

    # http://rubular.com/
    #
    # Regular expression:
    # [   #Character block start.
    # ^   #Not these characters (letters, numbers).
    # \w  #Word characters.
    # \s  #Space characters.
    # ]   #Character block end.
  end

  def count_unique_words_in_array(original_array_of_words)
    original_array_of_words.uniq.count
  end

  def count_of_each_word(original_array_of_words)
    counts = Hash.new(0)

    original_array_of_words.each do |word|
      counts[word] += 1
    end

    counts
  end
end
