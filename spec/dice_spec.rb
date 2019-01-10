require 'dice'

describe Dice do
  it "rolling die should an integer" do
    expect(subject.roll[0]).to be_an_instance_of Integer
  end

  it "should always return number between 1 and 6" do
    expect(subject.roll(100).select{|n| n < 1 || n > 6}).to eq []
  end

  it "should be random" do
    srand(4)
    expect(subject.roll).to eq [3]
  end

  it "user should be able to specify the number of die to roll" do
    expect(subject.roll(4).length).to eq 4
  end
end
