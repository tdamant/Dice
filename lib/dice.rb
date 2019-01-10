class Dice
  def roll(n=1)
    (1..n).to_a.map{rand(1..6)}
  end
end
