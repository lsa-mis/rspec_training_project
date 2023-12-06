class Stemmer
  # Array of suffixes to be removed
  SUFFIXES = ["ing", "ed", "es", "s", "or"]
  
  # Array of prefixes to be removed
  PREFIXES = ["in", "over", "under", "multi", "un", "semi", 'anti']
  
  def stem(word)
    word = remove_hyphens(word)
    stemmed_word = stem_suffixes(word)
    stemmed_word = stem_prefixes(stemmed_word)
    stemmed_word
  end
  
  private
  
  # Helper function to remove the hyphens
  def remove_hyphens(word)
    word.gsub('-', '')
  end

  # Helper function to remove the suffixes
  def stem_suffixes(word)
    SUFFIXES.each do |suffix|
      return word.chomp(suffix) if word.end_with?(suffix)
    end
    word
  end
  
  # Helper function to remove the prefixes
  def stem_prefixes(word)
    PREFIXES.each do |prefix|
      return word.sub(prefix, '') if word.start_with?(prefix)
    end
    word
  end
end