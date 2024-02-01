class Word
  SUFFIXES = %w[ing ed es s or].sort_by(&:length).reverse # Sort by length, longest first
  PREFIXES = %w[in over under multi un semi anti]

  def initialize(value)
    @value = value
  end

  def stem
    without_prefix(without_suffix(@value.downcase))
  end

  private

  def without_suffix(value)
    SUFFIXES.each do |suffix|
      next unless value.end_with?(suffix)
      potential_new_value = value[0...-suffix.length]
      # Implementing a more nuanced check for "ing" removal
      if suffix == 'ing' && !['a', 'e', 'i', 'o', 'u'].include?(potential_new_value[-1])
        break # Avoid removing "ing" if it doesn't follow a vowel, simplistic check
      end
      value = potential_new_value
      break # Assuming only one round of suffix removal for now
    end
    value
  end

  def without_prefix(value)
    PREFIXES.each do |prefix|
      if value.downcase.start_with?(prefix)
        # Improved handling for hyphenated words
        value = value.sub(/^#{prefix}-?/, '')
        break
      end
    end
    value
  end
end
