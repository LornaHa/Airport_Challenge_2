require 'airport'

describe Airport do

  it { is_expected.to respond_to :land_plane }

  it "accepts a plane to land" do
    expect(subject).to respond_to(:land_plane).with(1).argument
  end

end
