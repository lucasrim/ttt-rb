require_relative 'board'

describe TicTacToe::Board do
  describe 'board initialization' do

    let(:board) {TicTacToe::Board.new(3)}

    it 'has a dimension of 3' do
      expect(board.dimensions).to eq(3)
    end

    it 'has a board length of 3' do
      expect(board.board.length).to eq(3)
    end

    it 'has nested arrays lenght of 3' do
      expect(board.board.first.length).to eq(3)
    end

  end
end
