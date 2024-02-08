class Word
  SUFFIXES = %w[ing ed es s or]

  PREFIXES = %w[in over under multi un semi anti]

  def initialize(value)
    @value = value
  end

  def stem
    without_prefix(without_suffix(@value.downcase))
  end

  private

  def without_suffix(value, suffixes = SUFFIXES.dup)
    return value if suffixes.empty?

    suffix = suffixes.shift
    if value.end_with?(suffix)
      value.chomp(suffix)
    else
      without_suffix(value, suffixes)
    end
  end

  def without_prefix(value)
    PREFIXES.each do |prefix|
      if value.start_with?(prefix)
        value.slice!(prefix)
        value.slice!("-")
        return value
      end
    end
    return value
  end

end