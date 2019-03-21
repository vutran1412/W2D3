RANK = {
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14
}
SUIT = {
    club: "♣️",
    diamond: "♦️",
    hearts: "❤",
    spade: "♠️"
}


class Card

    attr_reader :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def to_s
        "|#{self.rank[1]} #{self.suit[1]}|"
    end
end