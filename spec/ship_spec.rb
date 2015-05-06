require 'ship'

describe Ship do

  it 'to have a ship with a length of one' do
    expect(subject.length).to eq 1
  end

  it 'exist in selection of other ships with different lengths' do
    destroyer = Ship.new(6)
    aircraft_carrier = Ship.new(4)
    expect(destroyer.length != aircraft_carrier.length).to eq true
  end

  # it 'can be placed vertically or horizontally' do
  #   orientation_states = ['h', 'v']
  #   expect(orientation_states).to include subject.orientation
  # end

end