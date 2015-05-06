require 'ship'

describe Ship do

  it 'to have a ship with a length of one' do
    expect(subject.length).to eq 1
  end

  it 'exist in selection of other ships with different lengths' do
    destroyer = subject 6
    aircraft_carrier = subject 4
    expect(destroyer.length != aircraft_carrier.length).to eq true
  end

end