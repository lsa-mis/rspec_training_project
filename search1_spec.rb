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
end