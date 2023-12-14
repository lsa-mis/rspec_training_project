class Stemmer
  SUFFIXES = ["ing", "ed", "es", "s", "or"]
  PREFIXES = ["in", "over", "under", "multi", "un", "semi", 'anti']

  def stem(word)
    remove_prefix(remove_suffix(word))
  end

  private

    def remove_suffix(word)
      SUFFIXES.each do |suffix|
        if word.end_with?(suffix)
          return word.chomp(suffix)
        end
      end
      return word
    end

    def remove_prefix(word)
      PREFIXES.each do |prefix|
        if word.start_with?(prefix)
          word.slice!(prefix)
          word.slice!("-")
          return word
        end
      end
      return word
    end

end
