class Player
    attr_accessor :name, :hand, :bankroll
    @@no_of_players = 2
    def initialize name, hand, bankroll 
        @name = name
        @hand = [] 
        @bankroll = bankroll
    end 

    def accept_name name
        p name = gets.chomp
    end
end

person = Player.new '', [], 100
p person

computer = Player.new 'Computer', [], 10000
