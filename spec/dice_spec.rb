require 'dice'

describe Dice do
  it "rolling die should an integer" do
    expect(subject.roll).to be_an_instance_of Integer
  end

  it "should always return number between 1 and 6" do
    arr_1 = []
    100.times{arr_1 << subject.roll}
    expect(arr_1.select{|n| n < 1 || n > 6}).to eq []
  end

  it "the die should be random" do
    arr_1 =[] ; arr_2 = []
    100.times{arr_1 << subject.roll}
    100.times{arr_2 << subject.roll}
    expect(arr_1).not_to eq arr_2
  end

end
