class Board

  attr_reader :grid

  def initialize
    @grid = []
  end

  def place_ship ship, orientation
    ship.orientation = orientation
    @grid << ship
  end

end