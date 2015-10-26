class String
  def unique_word_count
    @user_phrase = String.new
    if @user_phrase.length == 0
      return 0
    end
    if @user_phrase.length == 1
      return 1
    end
    if @user_phrase.length > 1
      return @user_phrase.gsub(/[^-a-zA-Z]/, ' ').split(//).uniq
    end
  end

  def word_frequency_count
    @user_pharse = String.new
    if @user_phrase.length == 0
      return {}
    end
    else
      words =@user_phrase.split(/[^a-zA-Z]/)
      freqs = Hash.new
      words.each { |word| freqs[word] +=1}


  end
end