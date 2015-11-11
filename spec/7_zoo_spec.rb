require "spec_helper"

RSpec.describe Zoo do
  season_opening_date = Date.parse("2015/04/1")
  season_closing_date = Date.parse("2015/12/15")
  let(:zoo) { Zoo.new("Zooniverse", season_opening_date, season_closing_date) }

  describe ".new" do
    it "should take the name of the zoo as a required argument" do
      expect(zoo).to be_a(Zoo)
    end

    it "takes a start_time, and end_time as arguments" do
      expect(zoo).to be_a(Zoo)
    end

    it "Opening time is before closing time" do
      expect(zoo.season_opening_date).to be < zoo.season_closing_date
    end

    it "should create ten cages by default" do
      expect(zoo.cages.count).to eq(10)
      expect(zoo.cages.first).to be_a(Cage)
    end
  end

  describe "#add_employee" do
    it "should add a new employee to the employees array" do
      bob = Employee.new("Bob Fossil")
      zoo.add_employee(bob)
      expect(zoo.employees).to include(bob)
    end
  end

  describe "#open?" do
    it "should be open if it's within season open and close dates" do
      date = Date.parse("2015/05/01")
      expect(zoo.open?(date)).to be true
    end

    it "should not be open if it's out season open and close dates" do
      date = Date.parse("2015/3/1")
      date = Date.parse("2015/12/16")
      expect(zoo.open?(date)).to be false
    end
  end

  describe "#add_animal" do
    it "should add an animal to the first open cage" do
      gorilla = Gorilla.new("Bollo")
      zoo.add_animal(gorilla)
      expect(zoo.cages.first.animal).to be_a(Gorilla)
    end

    it "should raise an error if there are no empty cages" do
      10.times do |i|
        python = Python.new("Long Mover #{i}")
        zoo.add_animal(python)
      end

      python = Python.new("Another python")
      expect { zoo.add_animal(python) }.to raise_error(ZooAtCapacity)
    end
  end

  describe "#visit" do
    let(:howard) { Employee.new("Howard Moon") }
    let(:vince) { Employee.new("Vince Noir") }
    let(:gorilla) { Gorilla.new("Bollo") }
    let(:fox) { Fox.new("Jack") }
    season_opening_date = Date.parse("2015/04/1")
    season_closing_date = Date.parse("2015/12/15")

    let(:zoo) do
      zoo = Zoo.new("Zooniverse", season_opening_date, season_closing_date)
      zoo.add_employee(howard)
      zoo.add_employee(vince)
      zoo.add_animal(gorilla)
      zoo.add_animal(fox)
      zoo
    end

    it "should output a string" do
      expect(zoo.visit).to be_a(String)
    end

    it "should tell us the employees that waved to us" do
      expect(zoo.visit).to include("Howard Moon waved hello!\n")
      expect(zoo.visit).to include("Vince Noir waved hello!\n")
    end

    it "should tell us what the animals said" do
      expect(zoo.visit).to include("Bollo got a bad feeling about this...\n")
      expect(zoo.visit).to include("Ring-ding-ding-ding-dingeringeding!\n")
    end
  end

  describe "finished" do
    it "should give you a message when you are finished" do
      puts "\nYou're done! You built a Zoo!"
      system("open", "http://goo.gl/t9QP2d")
    end
  end
end
