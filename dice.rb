class Dice
  def initialize sides
    @sides = sides
  end
  attr_reader :sides

  def roll
    rand(1..@sides)
  end

  def loaded?
    false
  end
end

class LoadedDice < Dice
  def but_really_is_it_loaded?
    true
  end
  def roll
    super + 1
    # rand((1..@sides)+1.)upto(@sides_to.i)
  end
end
