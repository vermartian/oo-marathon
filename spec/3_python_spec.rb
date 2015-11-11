require "spec_helper"

RSpec.describe Python do
  let(:python) { Python.new("Long Mover") }

  describe ".new" do
    it "take a name as an argument" do
      expect(python).to be_a(Python)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(python.name).to eq("Long Mover")
    end
  end

  describe "#speak" do
    it "says what a snake says" do
      expect(python.speak).to eq("SSSSssssss...")
    end
  end
end
