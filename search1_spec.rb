require 'rspec'
require_relative './stemmer.rb'


RSpec.describe Stemmer, "#stem" do
  let(:stemmer) { Stemmer.new }
  context "when the given word is 'training'" do
    it "returns 'train'" do
      result = stemmer.stem('training')

      expect(result).to eq('train')
    end
  end

  context "when the given word is 'started'" do
    it "returns 'start'" do
      result = stemmer.stem('started')

      expect(result).to eq('start')
    end
  end

  context "when the given word is 'dresses'" do
    it "returns 'dress'" do
      result = stemmer.stem('dresses')

      expect(result).to eq('dress')
    end
  end

  context "when the given word is 'uncapable'" do
    it "returns 'capable'" do
      result = stemmer.stem('uncapable')

      expect(result).to eq('capable')
    end
  end

  context "when the given word is 'underestimated'" do
    it "returns 'estimat'" do
      result = stemmer.stem('underestimated')

      expect(result).to eq('estimat')
    end
  end

  context "when the given word is 'semiconductor'" do
    it "returns 'conduct'" do
      result = stemmer.stem('semiconductor')

      expect(result).to eq('conduct')
    end
  end

  context "when the given word is 'semi-structured'" do
    it "returns 'structur'" do
      result = stemmer.stem('semi-structured')

      expect(result).to eq('structur')
    end
  end

end
