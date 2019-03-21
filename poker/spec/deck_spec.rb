require "deck"
require "rspec"

RSpec.describe Deck do
    subject(:deck) { Deck.new }

    describe "#initialize" do
        it "will create deck of 52" do
            expect(deck.card_deck.size).to eq(52)
        end

        it "will populate deck with 52 card objects" do
            expect(deck.card_deck[0].is_a?(Card)).to be(true)
        end
    end

end