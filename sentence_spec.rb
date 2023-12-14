require 'rspec'
require_relative './word.rb'

RSpec.describe Sentence, "#stem" do

  context "when the given word is 'training'" do
    it "returns 'train'" do
      result = Sentence.new('the guinea pigs are training to eat carrots').stem
      expect(result).to eq('the guinea pig are train to eat carrot')
    end
  end

end