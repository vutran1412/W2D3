require "hand"
require "rspec"
require "deck"

RSpec.describe Hand do
    subject(:hand) { Hand.new(Deck.new) }
    describe "#initialize" do
        it "takes in a hand as an array" do
            expect(hand.card_hand).to eq([])
        end
    end

    describe "#get_cards" do
        it "receives 5 card objects" do
            expect(hand.get_cards.all?(Card)).to eq(true)
        end
    end


end