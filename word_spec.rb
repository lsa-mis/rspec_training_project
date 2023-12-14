require 'rspec'
require_relative './word.rb'


RSpec.describe Word, "#stem" do

  let!(:word) { Word.new }
  context "when the given word is 'training'" do
    it "returns 'train'" do
      result = word.stem('training')
      expect(result).to eq('train')
    end
  end

  context "when the given word is 'started'" do
    it "returns 'start'" do
      result = word.stem('started')
      expect(result).to eq('start')
    end
  end

  context "when the given word is 'dresses'" do
    it "returns 'dress'" do
      result = word.stem('dresses')
      expect(result).to eq('dress')
    end
  end

  context "when the given word is 'uncapable'" do
    it "returns 'capable'" do
      result = word.stem('uncapable')
      expect(result).to eq('capable')
    end
  end

  context "when the given word is 'underestimated'" do
    it "returns 'estimat'" do
      result = word.stem('underestimated')
      expect(result).to eq('estimat')
    end
  end

  context "when the given word is 'semiconductor'" do
    it "returns 'conduct'" do
      result = word.stem('semiconductor')
      expect(result).to eq('conduct')
    end
  end

  context "when the given word is 'semi-structured'" do
    it "returns 'structur'" do
      result = word.stem('semi-structured')
      expect(result).to eq('structur')
    end
  end

end
