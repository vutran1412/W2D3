require_relative "deck.rb"

class Hand
    attr_accessor :card_hand
    def initialize(deck)
        @deck = deck
        @card_hand = []
    end

    def get_cards
        5.times do |i|
            @card_hand << @deck.deal
        end

        @card_hand
    end
end