require "spec_helper"

RSpec.describe Employee do
  let(:dixon) { Employee.new("Dixon Bainbridge", "Owner") }

  describe ".new" do
    it "takes a name and title as arguments" do
      expect(dixon).to be_an(Employee)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(dixon.name).to eq("Dixon Bainbridge")
    end
  end

  describe "#title" do
    it "has a reader for title" do
      expect(dixon.title).to eq("Owner")
    end

    it "sets the default title to 'Zoo Keeper'" do
      naboo = Employee.new("Naboo")
      expect(naboo.title).to eq("Zoo Keeper")
    end
  end

  describe "#full_title" do
    it "returns the name and title of an employee" do
      expect(dixon.full_title).to eq("Dixon Bainbridge, Owner")
    end
  end

  describe "#greet" do
    it "should be a string" do
      expect(dixon.greet).to be_a(String)
    end

    it "should greet the user" do
      expect(dixon.greet).to eq("Dixon Bainbridge waved hello!\n")
    end
  end
end
