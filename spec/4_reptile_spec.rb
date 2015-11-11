require "spec_helper"

RSpec.describe Reptile do
  let(:python) { Python.new("Long Mover") }

  describe "#cold_blooded?" do
    context "Animals that are reptiles should include the reptile module" do
      it "should return true for reptiles" do
        expect(python.cold_blooded?).to eq true
      end
    end
  end
end
