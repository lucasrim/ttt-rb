require_relative 'board'

describe TicTacToe::Board do
  describe 'board initialization' do
    let(:board) {TicTacToe::Board.new(3)}

    it 'has a dimension of 3' do
      expect(board.dimensions).to eq(3)
    end

    it 'has a board length of 3^2' do
      expect(board.board.length).to eq(9)
    end

    it 'should be empty' do
      expect(board.board).to eq(Array.new(9) { nil })
    end
  end

  describe '#place_move' do
    let(:board) {TicTacToe::Board.new(3)}

    it 'places X at board[0]' do
      expect(board.place_move('X', 0)).to eq( ['X', nil, nil, nil, nil, nil, nil, nil, nil] )
    end

    it 'knows available spaces' do
      board.place_move('X', 0)
      expect(board.available_spaces).to eq([1, 2, 3, 4, 5, 6, 7, 8])
    end

    it 'raises error if placed at taken space' do
      board.place_move('X', 0)
      expect(board.place_move('O', 0)).to raise_error(ArgumentError)
    end

  end
end
