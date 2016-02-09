module TicTacToe

  class Board

    attr_reader :dimensions
    attr_accessor :board, :empty_spaces

    def initialize( dimensions )
      @dimensions = dimensions
      @board = Array.new( dimensions * dimensions ) { nil }
      @empty_spaces = available_spaces
    end

    def available_spaces
      available_spaces_array = []
      board.each_with_index { |val, index| available_spaces_array << index if val == nil }
      @empty_spaces = available_spaces_array
    end

    def place_move( character, space )
      available_spaces
      raise ArgumentError, "Space is taken" unless @empty_spaces.include?( space )
      board[ space ] = character
    end
  end

end
