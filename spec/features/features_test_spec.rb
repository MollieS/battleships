require 'capybara/rspec'
require 'board'
require 'ship'

feature 'Play a game of battleships' do

  let(:board) { Board.new }
  let(:ship) { Ship.new }

  scenario 'put a ship on the board' do
    board.place_ship ship
    expect(board.grid).to include ship
  end


end