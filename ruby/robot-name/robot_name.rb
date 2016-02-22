require 'pry'

class Robot
  attr_reader :name

  LETTERS = [*'A'..'Z']
  NUMBERS = [*0..9]

  def initialize
    @name = name_generator
  end

  def name_generator
    @name = LETTERS.sample(2) + NUMBERS.sample(3)
    @name.join
  end

  def reset
    @name = name_generator
  end

end
