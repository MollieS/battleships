require 'board'
describe Board do
  it {is_expected.to respond_to :place_ship}

  it 'can retrieve number from coordinates' do
    expect(subject.x_axis('A1')).to eq 1
  end

  it 'can retrieve letter from coordinates (return as number equivalent)' do
    expect(subject.y_axis_to_num('A1')).to eq 1
  end
end