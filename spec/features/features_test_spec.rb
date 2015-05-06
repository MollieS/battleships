require 'capybara/rspec'
require 'board'
require 'ship'

feature 'Play a game of battleships' do

  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'put a ship on the board with a given orientation' do
    board.place_ship ship, 'A1', 'v'
    expect(board.grid).to include ship
    expect(ship.orientation).to eq 'v'
  end

  scenario 'ensure ship does not go off edge of grid' do
    destroyer = Ship.new 2
    expect { board.place_ship destroyer, 'A1', 'v'}.to raise_error 'boat is off the grid!'
  end

end