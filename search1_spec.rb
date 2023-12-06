require 'rspec'
require_relative './stemmer.rb'

RSpec.describe Stemmer, "#stemsuffix" do
  context "when the given word is 'training'" do
    it "returns 'train'" do
      find_the_stem("training", "train")
    end
  end

  context "when the given word is 'started'" do
    it "returns 'start'" do
      find_the_stem("started", "start")
    end
  end

  context "when the given word is 'dresses'" do
    it "returns 'dress'" do
      find_the_stem("dresses","dress")
    end
  end

  context "when the given word is 'semiconductor'" do
    it "returns 'conduct'" do
      find_the_stem("semiconductor","conduct")
    end
  end

end

RSpec.describe Stemmer, "#stemprefix" do
  context "when the given word is 'incapable'" do
    it "returns 'capable'" do
      find_the_stem("incapable","qcapable")
    end
  end

  context "when the given word is 'underestimated'" do
    it "returns 'estimat'" do
      find_the_stem("underestimated","estimat")
    end
  end
end

RSpec.describe Stemmer, "#stemprefixandSuffix" do
  context "when the given word is 'semi-structured'" do
    it "returns 'structur'" do
      find_the_stem("semi-structured","structur")
    end
  end
end


def find_the_stem(stem_original, expect_result)
  stemmer = Stemmer.new

  result = stemmer.stem(stem_original)

  expect(result).to eq(expect_result)

end