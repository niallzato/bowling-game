class Frame
  attr_accessor :pins1, :pins2

  def initialize(pins)
    @pins1 = pins
    @pins2 = 0
  end

  def roll(pins2)
    @pins2 = pins2
  end

  def spare?()
    @pins1 + @pins2 == 10
  end

  def strike?()
    @pins1 == 10
  end

  def score
    @pins1 + @pins2
  end

end