class Stemmer
  SUFFIXES = %w[ing ed es s or].freeze
  PREFIXES = %w[in over under multi un semi anti].freeze
  SPECIAL_CHAR = '-'

  def remove_suffix(word)
    SUFFIXES.each do |suffix|
      return word.chomp(suffix) if word.end_with?(suffix)
    end
    word
  end

  def remove_prefix(word)
    PREFIXES.each do |prefix|
      return word[prefix.length..-1] if word.start_with?(prefix)
    end
    word
  end

  def remove_special_characters(word)
    return word.gsub(SPECIAL_CHAR, '') if word.include?(SPECIAL_CHAR)
    word
  end

  def stem(word)
    remove_special_characters(
      remove_prefix(
        remove_suffix(word.dup)
      )
    )
  end
end