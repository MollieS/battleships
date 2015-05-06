class Board

  attr_reader :grid

  def initialize
    @grid = [{ 'A' => '0' }]
  end

  def place_ship ship, coords, orientation
    ship_fit ship, coords, orientation
    fail 'boats have overlapped!' unless space_clear? coords
    @grid[x_axis(coords)][y_axis(coords)] = ship
  end

  def ship_fit ship, coords, orientation
    x_axis coords
    if orientation == 'v'
      fail 'boat is off the grid!' if (x_axis(coords)) + ship.length > grid.length
    elsif orientation == 'h'
      fail 'boat is off the grid!' if (y_axis_to_num(coords) - 1) + ship.length > grid.length
    end
  end

  def x_axis coords
    (coords.split(//)[1].to_i) - 1
  end

  def y_axis_to_num coords
    alphabet = ('A'..'J').to_a
    val = coords.split(//)[0]
    (alphabet.index(val)) + 1
  end

  def y_axis coords
    val = coords.split(//)[0]
  end

  def space_clear? coords
    grid_read(coords) == '0'
  end

  def grid_read coords
    @grid[x_axis(coords)][y_axis(coords)]
  end

end