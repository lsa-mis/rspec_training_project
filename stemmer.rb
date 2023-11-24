class Stemmer
  SUFFIXES = ["ing", "ed", "es", "s"]
  PREFIXES = ["in", "over", "under", "multi", "un"]

  def ending(word)
    SUFFIXES.each do |suffix|
      if word.end_with?(suffix)
        return word.chomp(suffix)
      end
    end
    return word
  end

  def starting(word)
    PREFIXES.each do |prefix|
      if word.start_with?(prefix)
        word.slice! prefix
        return word
      end
    end
    return word
  end

  def stem(word)
    new_word = ending(word)
    new_word = starting(new_word)
    return new_word
  end

end
