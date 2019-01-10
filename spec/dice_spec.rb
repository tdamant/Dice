require 'dice'
describe Dice do
  it "should respond to the roll method" do
    expect(subject).to respond_to :roll
  end

end
