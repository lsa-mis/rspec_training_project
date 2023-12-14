class Word
  SUFFIXES = ["ing", "ed", "es", "s", "or"]
  PREFIXES = ["in", "over", "under", "multi", "un", "semi", 'anti']

  def initialize(value)
    @value = value
  end

  def stem
    remove_prefix(remove_suffix(@value))
  end

  private

    def remove_suffix(value)
      SUFFIXES.each do |suffix|
        if value.end_with?(suffix)
          return value.chomp(suffix)
        end
      end
      return value
    end

    def remove_prefix(value)
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
