require 'game_board'

describe GameBoard do
  describe '#valid_position?' do
    let(:game_board) { GameBoard.new(5, 5) }

    context 'when "x" and "y" are valid' do
      let(:y_coord) { 3 }
      let(:x_coord) { 2 }

      it { expect(game_board.valid_position?(x_coord, y_coord)).to be true }
    end

    context 'when "x" is too big' do
      let(:y_coord) { 30 }
      let(:x_coord) { 2 }

      it { expect(game_board.valid_position?(x_coord, y_coord)).to be false }
    end

    context 'when "y" is too big' do
      let(:y_coord) { 3 }
      let(:x_coord) { 20 }

      it { expect(game_board.valid_position?(x_coord, y_coord)).to be false }
    end

    context 'when "x" is negative' do
      let(:y_coord) { -3 }
      let(:x_coord) { 2 }

      it { expect(game_board.valid_position?(x_coord, y_coord)).to be false }
    end

    context 'when "y" is negative' do
      let(:y_coord) { 3 }
      let(:x_coord) { -2 }

      it { expect(game_board.valid_position?(x_coord, y_coord)).to be false }
    end
  end
end
