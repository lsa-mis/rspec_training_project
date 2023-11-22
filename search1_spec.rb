require 'rspec'
require_relative './stemmer.rb'

RSpec.describe Stemmer, "#stem" do
  context "when the given word is 'training'" do
    it "returns 'train'" do
      stemmer = Stemmer.new

      result = stemmer.stem('training')

      expect(result).to eq('train')
    end
  end

  context "when the given word is 'started'" do
    it "returns 'start'" do
      stemmer = Stemmer.new

      result = stemmer.stem('started')

      expect(result).to eq('start')
    end
  end
end
