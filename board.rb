module TicTacToe

  class Board

    attr_reader :dimensions
    attr_accessor :board

    def initialize( dimensions )
      @dimensions = dimensions
      @board = Array.new( dimensions ) {Array.new( dimensions ) { nil }}
    end

  end

end
