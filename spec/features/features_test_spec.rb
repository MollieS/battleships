require 'capybara/rspec'
require 'board'
require 'ship'

feature 'Play a game of battleships' do

  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'put a ship on the board with a given orientation' do
    board.place_ship ship, 'v'
    expect(board.grid).to include ship
    expect(ship.orientation).to eq 'v'
  end

  scenario 'ensure ship does not go off edge of grid' do
    destroyer = ship 2
    expect { board.place_ship destroyer, 'v', 'A1' }.to raise_error 'boat is off the grid!'
  end

end