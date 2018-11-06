require "game"

describe Game do
  let(:game) { Game.new }

  describe "#roll" do
    it "responds to #roll" do
      expect(game).to respond_to(:roll)
    end
  end

  describe "#score" do
    it "responds to #roll" do
      expect(game).to respond_to(:score)
    end
  end
end
