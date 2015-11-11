require "spec_helper"

RSpec.describe Gorilla do
  let(:gorilla) { Gorilla.new("Bollo") }

  describe ".new" do
    it "take a name as an argument" do
      expect(gorilla).to be_a(Gorilla)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(gorilla.name).to eq("Bollo")
    end

    it "makes sure you didn't hardcode the gorilla's name" do
      koko = Gorilla.new("Koko")
      expect(koko.name).to eq("Koko")
    end
  end

  describe "#speak" do
    it "says Bollo's catch phrase" do
      expect(gorilla.speak).to eq("#{gorilla.name} got a bad feeling about this...")
    end
  end
end
