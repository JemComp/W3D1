require 'set'
class Game

    attr_reader :player_1, :player_2, :current_player, :fragment, :dictionary
    
    def initialize
        @player_1 = Player.new
        @player_2 = Player.new
        @current_player = @player_1
        @fragment = ""
        parsed = File.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(parsed)
    end

end