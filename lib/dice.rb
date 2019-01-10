class Dice
  def roll(n=1)
    array = []
    n.times{array << rand(1..6)}
    array
  end
end
