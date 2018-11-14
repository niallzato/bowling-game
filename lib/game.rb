require "frame"

class Game

  attr_accessor :score, :frames

  def initialize
    @frames = []
    @roll_count = 0
    @frame
  end

  def roll(pins)

    if @roll_count == 0
      @frame = Frame.new(pins)
      @roll_count += 1
      if @frame.strike?
        @roll_count = 0
        @frames << @frame
      end
    else
      @roll_count = 0
      @frame.roll(pins)
      @frames << @frame
    end

  end

  def score

    score = 0
    frame_count = @frames.size-1

    @frames.each_with_index do |value, key|
      bonus_score = 0

      if value.strike? && key < frame_count
        if @frames[key+1].strike? && key < frame_count-1
          bonus_score += @frames[key+1].score+@frames[key+2].score
        else
          bonus_score += @frames[key+1].score
        end
      elsif value.spare? && key < frame_count
        bonus_score += @frames[key+1].pins1
      end
      score += value.score+bonus_score

      break if score == 300
    end

    score
  end


end
