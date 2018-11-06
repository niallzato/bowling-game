require "game"

describe Game do
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
  end
end
