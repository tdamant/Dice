require 'dice'
describe Dice do
  it "should respond to the roll method" do
    expect(subject).to respond_to :roll
  end
  it "rolling die should return number in 1 - 6" do
    expect(subject.roll).to be_between(1,6)
  end
end
