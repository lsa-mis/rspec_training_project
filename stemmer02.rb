class Stemmer
  SUFFIXES = ["ing", "ed", "es", "s", "or"].freeze
  PREFIXES = ["in", "over", "under", "multi", "un", "semi", "anti"].freeze

  def stem(word)
    stem_suffix(draw_prefix(draw_special_characters(word)))
  end

  private

  def stem_suffix(word)
    SUFFIXES.each { |suffix| return word.chomp(suffix) if word.end_with?(suffix) }
    word
  end

  def draw_prefix(word)
    PREFIXES.each { |prefix| return word.delete_prefix(prefix) if word.start_with?(prefix) }
    word
  end

  def draw_special_characters(word)
    word.include?("-") ? word.delete("-") : word
  end

end