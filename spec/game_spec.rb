require "game"

describe Game do
  let(:game) {Game.new}

  describe "#roll" do
    it "responds to #roll" do
      game = Game.new
      expect(game).to respond_to(:roll)
    end
  end

  describe "#score" do
    it "responds to #roll" do
      game = Game.new
      expect(game).to respond_to(:score)
    end

    it "Gutter game scores zero - When you roll all misses, you get a total score of zero. " do
      roll_multiple(game, 0, 20)
      expect(game.score).to eq(0)
    end

    it "All ones scores 20 - When you knock down one pin with each ball, your total score is 20." do
      roll_multiple(game, 1, 20)
      expect(game.score).to eq(20)
    end

    it "A spare in the first frame, followed by three pins, followed by all misses scores 16. " do
      game.roll(5)
      game.roll(5)
      game.roll(3)
      game.roll(0)
      roll_multiple(game,0,17)
      expect(game.score).to eq(16)
    end

    it "A strike in the first frame, followed by three and then four pins, followed by all misses, scores 24. " do
      game.roll(10)
      game.roll(3)
      game.roll(4)
      roll_multiple(game,0,17)
      expect(game.score).to eq(24)
    end

    it "A perfect game (12 strikes) scores 300" do
      roll_multiple(game,10,12)
      expect(game.score).to eq(300)
    end

    def roll_multiple(game, pins, how_many)
      how_many.times do
        game.roll(pins)
      end
    end

  end
end
