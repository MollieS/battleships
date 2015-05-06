class Board

  attr_reader :grid

  def initialize
    @grid = [{ :A => 0 }]
  end

  def place_ship ship, coords, orientation
    grid_length ship, coords, orientation
    ship.orientation = orientation
    @grid << ship
  end

  def grid_length ship, coords, orientation
    if orientation == 'v'
      fail 'boat is off the grid!' if (coords - 1) + ship.length > grid.length
    end
  end

end