require 'rspec'
require_relative './word.rb'

RSpec.describe Word, "#stem" do

  context "when the given word is 'training'" do
    it "returns 'train'" do
      result = Word.new('training').stem
      expect(result).to eq('train')
    end
  end

  context "when the given word is 'TRAINING'" do
    it "returns 'train'" do
      result = Word.new('TRAINING').stem
      expect(result).to eq('train')
    end
  end

  context "when the given word is 'started'" do
    it "returns 'start'" do
      result = Word.new('started').stem
      expect(result).to eq('start')
    end
  end

  context "when the given word is 'dresses'" do
    it "returns 'dress'" do
      result = Word.new('dresses').stem
      expect(result).to eq('dress')
    end
  end

  context "when the given word is 'uncapable'" do
    it "returns 'capable'" do
      result = Word.new('uncapable').stem
      expect(result).to eq('capable')
    end
  end

  context "when the given word is 'underestimated'" do
    it "returns 'estimat'" do
      result = Word.new('underestimated').stem
      expect(result).to eq('estimat')
    end
  end

  context "when the given word is 'semiconductor'" do
    it "returns 'conduct'" do
      result = Word.new('semiconductor').stem
      expect(result).to eq('conduct')
    end
  end

  context "when the given word is 'semi-structured'" do
    it "returns 'structur'" do
      result = Word.new('semi-structured').stem
      expect(result).to eq('structur')
    end
  end

  context "when the given word is 'Semi-structured'" do
    it "returns 'structur'" do
      result = Word.new('Semi-structured').stem
      expect(result).to eq('structur')
    end
  end

end
