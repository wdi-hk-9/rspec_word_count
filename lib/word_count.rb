class String

  attr_accessor :word
  def initialize (word)
    @word = word
  end

  def unique_word_count(word)
  puts word.split.count
  end

  def word_frequency_count(word)
  words = word.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  return frequency
  end
end

string1 = String.new("word")
string1.unique_word_count("A bunch of words")
string1.word_frequency_count("Hi Hi yeah")