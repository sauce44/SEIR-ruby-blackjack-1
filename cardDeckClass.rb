#### CARD CLASS WHICH LETS ME MAKE EACH CARD AND INIT ITS NUMval FOR FACE CARDS
class Card 
    attr_reader :name, :num, :suit

    def initialize num, suit, name
        @num = num
        @suit = suit
        @name = name
    end

    def num_init 
        case @num
            when "J"
                @num = 10
            when "Q"
                @num = 10
            when "K"
                @num = 10
            when "A"
                @num = 11
            else
                @num = @num
            end
        end
    end

#################### Global Vars '$' for deck and cardvals arr 
    $deck = []
    $card_vals = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']

##################### Make the deck 1 suit at a time
    def make_suit this_suit
        13.times {|i, n| n = Card.new(
            @num = $card_vals[i],
            @suit = this_suit,
            @name = $card_vals[i].to_s + ' '+ 'of'+ ' ' +  @suit
        )
        n.num_init # call num_init to set value of num for face cards before pushing to deck
        $deck.push n
    }
    end

    make_suit "Clubs"
    make_suit "Diamonds"
    make_suit "Hearts"
    make_suit "Spades"

#print the deck and it's length to check everything
# p $deck
# p $deck.length

## We need to shuffle the deck and deal 

#which means we need a player class with a hand

    def shuffle arr 
        i = 0
        while i < arr.length do 
        decklength = (0...52).to_a;
        x = decklength.sample
        arr[x], arr[i] = arr[i], arr[x]
        i = i + 1
        end
    end

    shuffle $deck

    p $deck.first
    p $deck.last
    #p $deck
    p $deck.uniq.length
