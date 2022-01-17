# GameBoard
class GameBoard
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end

  def valid_position?(x_coord, y_coord)
    (x_coord >= 0 && x_coord <= columns && y_coord >= 0 && y_coord <= rows)
  end
end
