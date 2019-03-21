require "card"
require "rspec"

RSpec.describe Card do
    subject(:card1) { Card.new(2, "♣️") }
    describe "#initialize" do
        it "accepts a rank" do
            expect(card1.rank).to eq(2)
        end

        it "accepts a suit" do
            expect(card1.suit).to eq("♣️")
        end
    end
    describe "#to_s" do
        it "displays the rank and the suit" do
            expect(card1.to_s).to eq("|#{card1.rank[1]} #{card1.suit[1]}|")
        end
    end
end