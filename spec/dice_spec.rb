require 'dice'

describe Dice do
  it "numbers rolled by die should integers" do
    expect(subject.roll[0]).to be_an_instance_of Integer
  end

  it "should be random" do
    srand(4)
    expect(subject.roll).to eq [3]
    srand(189)
    expect(subject.roll).to eq [1]
  end

  it "user should be able to specify the number of die to roll" do
    expect(subject.roll(4).length).to eq 4
  end
end
