class Sentence
  require_relative './word.rb'
  FUNCTION_WORDS = ["of"", ""at", "on", "in", "to", "without", "between", "the", "the", "a", "that", "my", "more", "much", "either",
  "neither", "and", "that", "when", "what", "while", "although", "or", "no", "not", "nor", "as", "is", "am", "are", "have", "got", "do",
  "you", "i", "he", "she"]

  def initialize(value)
    @value = value
  end

  def stems
    array_of_stems = []
    remove_function_words(remove_punctuation_marks(@value)).each do |word|
      array_of_stems << Word.new(word).stem
    end
    remove_duplicate_stems(array_of_stems).join(" ")
  end

  private

    def remove_function_words(value)
      value.downcase.split(" ") - FUNCTION_WORDS
    end

    def remove_punctuation_marks(value)
      value.gsub(/[[:punct:]]/,'')
    end

    def remove_duplicate_stems(value)
      value.uniq
    end

end
