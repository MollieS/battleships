class Board

  attr_reader :grid

  def initialize
    @grid = [{ :A => 0 }]
  end

  def place_ship ship, coords, orientation
    ship_fit ship, coords, orientation
    ship.orientation = orientation
    @grid << ship
  end

  def ship_fit ship, coords, orientation
    x_axis coords
    if orientation == 'v'
      fail 'boat is off the grid!' if (x_axis(coords) - 1) + ship.length > grid.length
    end
  end

  def x_axis coords
    coords.split(//)[1].to_i
  end

  def y_axis_to_num coords
    alphabet = ('A'..'J').to_a
    val = coords.split(//)[0]
    (alphabet.index(val)) + 1
  end

end