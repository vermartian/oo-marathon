require "spec_helper"

RSpec.describe Cage do
  let(:cage) { Cage.new }
  let(:koko) { Gorilla.new("Koko") }

  describe "#animal=" do
    it "has a writer for animal" do
      expect { cage.animal = koko }.to_not raise_error
    end
  end

  describe "#animal" do
    it "has a reader for animal" do
      cage.animal = koko
      expect(cage.animal).to eq(koko)
    end
  end

  describe "#empty?" do
    it "returns true when no animals present" do
      expect(cage.empty?).to be(true)
    end

    it "returns false when the cage contains an animal" do
      cage.animal = koko
      expect(cage.empty?).to be(false)
    end
  end
end
