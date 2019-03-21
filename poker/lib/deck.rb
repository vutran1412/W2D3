require_relative "card.rb"

class Deck
    attr_accessor :card_deck
    def initialize
        @card_deck = []
        SUIT.each do |i|
            RANK.each do |j|
                card_deck << Card.new(j, i)
            end
        end
    end

    def deal
        @card_deck.shuffle!
        @card_deck.pop
    end



end