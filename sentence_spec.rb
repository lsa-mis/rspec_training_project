require 'rspec'
require_relative './sentence.rb'
require_relative './word.rb'

RSpec.describe Sentence, "#stem" do

  context "when the given sentence is 'the guinea pigs are training to eat carrots'" do
    it "returns 'guinea pig train eat carrot'" do
      result = Sentence.new('the guinea pigs are training to eat carrots').stems
      expect(result).to eq('guinea pig train eat carrot')
    end
  end

  context "when the given sentence is 'Polonius: What do you read, my lord? Hamlet: Words, words, words.'" do
    it "returns 'Polonius read lord Hamlet word'" do
      result = Sentence.new('Polonius: What do you read, my lord? Hamlet: Words, words, words.').stems
      expect(result).to eq('poloniu read lord hamlet word')
    end
  end

end
